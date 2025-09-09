#include "spawnSmoke.sqf"
#include "runTest.sqf"
#include "common.sqf"

ETCS_fnc_getGunsWithType = {
	params ["_grp", "_kind"];
	(units _grp) select {
		!isNull objectParent _x && {
			private _veh = objectParent _x;
			if (typeName _kind == "ARRAY") then {
				_kind findIf {
					_veh isKindOf _x
				} > -1
			} else {
				_veh isKindOf _kind
			};
		}
	}
};

[] spawn {
	// Put delay here to make sure all variable where initialized.
	private _time = time;
	private _isTimeout = false;
	waitUntil {
		_isTimeout = (time > _time + 5);
		(!(isNil "alpha") &&
		!(isNil "bravo") &&
		!(isNil "charlie")) &&
		!(isNil "delta") &&
		!(isNil "papabear") &&
		!(isNil "november1") &&
		!(isNil "tank") &&
		!(isNil "heli1") &&
		!(isNil "heli2") &&
		!(isNil "mgun1") ||
		_isTimeout
	};

	if (_isTimeout) exitWith {
		hint "Initialization failed!";
		endMission "loading_error";
	};
	hint "Initialization OK!";

	[] call fnc_runTests;

	alpha setGroupId ["Alpha"];
	bravo setGroupId ["Bravo"];
	charlie setGroupId ["Charlie"];
	delta setGroupId ["Delta"];
	papabear setGroupId ["Papa Bear"];
	november1 setGroupId ["November (1)"];
	november2 setGroupId ["November (2)"];

	private _teams = [alpha, bravo, charlie, delta];
	private _special = [papabear];

	[mgun1, alpha] execVM "manageGunCrew.sqf";
	[mgun1, bravo] execVM "manageGunCrew.sqf";

	// Everyone runs revive
	{
		[_x] execVM "reviveSystem.sqf";
	} forEach (_teams + _special);

	// Only regular teams run the extra scripts
	{
		if (_x != delta) then {
			[_x, papabear, 1] execVM "checkCompanyStatus.sqf";
			[_x, 0.75] execVM "huntRemainingEnemies.sqf";
		};
	} forEach _teams;

	private _guns = [papabear, ["StaticMortar", "StaticWeapon"]] call ETCS_fnc_getGunsWithType;
	private _grpCallArty = [alpha, bravo];
	{
		private _index = _forEachIndex % (count _grpCallArty);

		//   _gun                   - The mortar or artillery object to control.
		//   _genericParam          - Either a number for AUTO mode (detection range) or an object for SCOUT mode (scout group).
		//   _rounds                - Number of rounds to fire per cluster (default: 8).
		//   _clusterRadius         - Radius (in meters) to group nearby enemies into a cluster (default: 50).
		//   _minUnitsPerCluster    - Minimum number of units in a cluster before engaging (default: 8).
		//   _coolDownForEffect     - Delay (in seconds) between volleys (default: 60).
		//   _unlimitedAmmo         - Boolean; true to allow infinite resupply (default: false).
		//   _claimRadius           - distance to avoid firing if target is claimed by another gun (default: 50).
		//   _accuracyRadius        - Scatter radius (in meters) for shot inaccuracy (default: 0 = perfect aim).
		[objectParent _x, _grpCallArty select _index, 6, 50, 8, 5, true, 50] execVM "unifiedArtilleryFire.sqf";
	} forEach _guns;

	[tank] execVM "manageJeepCrew.sqf";
	[heli1, 80, 0.25] execVM "flyInChopper.sqf";
	// [heli2, 80, 0.25] execVM "flyInChopper.sqf";
	[getMarkerPos "captives_area", 280] execVM "moveCaptives.sqf";

	{
		{
			_x disableAI "PATH";
			_x disableAI "COVER";
			_x disableAI "SUPPRESSION";
			_x setUnitPos "UP";
			_x setBehaviour "COMBAT";
			_x setCombatMode "RED";
			_x setSkill 1;
			_x setSkill ["aimingAccuracy", 1];
			_x setSkill ["aimingShake", 1];
			_x setSkill ["aimingSpeed", 1];
			_x setSkill ["spotDistance", 0.85];
			_x setSkill ["spotTime", 0.80];
			_x setSkill ["courage", 0.90];
			_x setSkill ["commanding", 0.75];
			_x setSkill ["general", 0.85];
		} forEach units _x;
	} forEach [delta];

	[papabear] spawn ETCS_fnc_monitorSaveGame;
	[] execVM "smokeSuppressed.sqf";

	[papabear, "RadioPapaBearDefendTheCityWithArtillerySupport", 10] call ETCS_fnc_callSideRadio;
	["TaskAssigned", ["Defend Athira", "Defend this city at all cost."]] call BIS_fnc_showNotification;

	{
		[_x, papabear] execVM "monitorMission.sqf";
	} forEach ["lose1", "lose2", "end1"];
};

private _all = allUnits;

{
	_x addEventHandler ["Killed", {
		params ["_victim", "_killer"];

		if (_victim == player && !isNull _killer) then {
			private _cam = "camera" camCreate (position _killer);
			_cam cameraEffect ["INTERNAL", "BACK"];
			_cam camSetTarget _killer;

			// Get killer's facing direction in radians
			private _dir = getDir _killer;

			// Place camera 6m behind, 5m up
			private _backX = -(6 * sin _dir);
			private _backY = -(6 * cos _dir);
			private _height = 5;

			_cam camSetRelPos [_backX, _backY, _height];
			_cam camCommit 0;

			cutText [format ["%1 killed %2", name _killer, name _victim], "PLAIN DOWN"];

			// Orbit camera in background
			[_killer, _cam] spawn {
				params ["_killer", "_cam"];
				private _angle = 0;

				for "_i" from 0 to 100 do {
					if (isNull _cam || isNull _killer) exitWith {};
					_angle = _angle + 5;

					// Orbit in a circle around killer
					private _xPos = 3 * cos _angle;
					private _yPos = 3 * sin _angle;

					_cam camSetRelPos [_xPos, _yPos, 1.5];
					_cam camCommit 0.1;

					sleep 0.1;
				};
				sleep 5;
				// Release camera after ~10s
				camDestroy _cam;

				player switchCamera "INTERNAL";
			};
		};
	}];
} forEach _all;

ETCS_fnc_monitorSaveGame = {
	params ["_papabear"];

	private _originalEnemyCount = count (allUnits select {
		(side _x == east) && (alive _x) && (lifeState _x != "INCAPACITATED")
	});
	private _threshHoldCount = floor(_originalEnemyCount * 0.75);

	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	[_papabear, "RadioPapaBearToAllUnitsClearArea", 12] call ETCS_fnc_callSideRadio;
	["TaskSucceeded", ["Task Completed", "25% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	saveGame;

	_threshHoldCount = floor(_originalEnemyCount * 0.5);
	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	["TaskSucceeded", ["Task Completed", "50% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	sleep 8;
	saveGame;

	_threshHoldCount = floor(_originalEnemyCount * 0.25);
	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	["TaskSucceeded", ["Task Completed", "75% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	sleep 8;
	saveGame;
};