fnc_getGunsWithType = {
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

{
	_x addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator"];

		private _unitSide = side (group _unit);

		private _killerSide = if (isNull _instigator) then {
			side (group _killer)
		} else {
			side (group _instigator)
		};

		private _unitName = name _unit;
		private _killerName = if (isNull _instigator) then {
			name _killer
		} else {
			name _instigator
		};

		private _unitGroup = if (isNull group _unit) then {
			"No Group"
		} else {
			groupId (group _unit)
		};
		private _killerGroup = if (isNull _instigator) then {
			if (isNull group _killer) then {
				"No Group"
			} else {
				groupId (group _killer)
			}
		} else {
			if (isNull group _instigator) then {
				"No Group"
			} else {
				groupId (group _instigator)
			}
		};

		systemChat format [
			"[%1 | %2] %3 killed [%4 | %5] %6",
			_killerSide, _killerGroup, _killerName,
			_unitSide, _unitGroup, _unitName
		];
	}];
} forEach allUnits;

[] spawn {
	// Put delay here to make sure all variable where initialized.
	private _time = time;
	private _isTimeout = false;
	waitUntil {
		_isTimeout = (time > _time + 5);
		(!(isNil "alpha") &&
		!(isNil "bravo") &&
		!(isNil "charlie") &&
		!(isNil "delta") &&
		!(isNil "echo_mech")) &&
		!(isNil "papabear") &&
		!(isNil "november1") &&
		!(isNil "november2") &&
		!(isNil "tank") &&
		!(isNil "heli1") &&
		!(isNil "heli2") ||
		_isTimeout
	};

	if (_isTimeout) exitWith {
		hint "Initialization failed!";
		endMission "loading_error";
	};
	hint "Initialization OK!";

	alpha setGroupId ["Alpha"];
	bravo setGroupId ["Bravo"];
	charlie setGroupId ["Charlie"];
	delta setGroupId ["Delta"];
	echo_mech setGroupId ["Echo"];
	papabear setGroupId ["Papa Bear"];
	november1 setGroupId ["November (1)"];
	november2 setGroupId ["November (2)"];

	private _teams = [alpha, bravo, charlie, delta, echo_mech];
	private _special = [papabear];

	// Everyone runs revive
	{
		[_x] execVM "reviveSystem.sqf";
	} forEach (_teams + _special);

	// Only regular teams run the extra scripts
	{
		if (_x != delta) then {
			[_x, papabear] execVM "checkCompanyStatus.sqf";
			[_x, 0.5] execVM "huntRemainingEnemies.sqf";
		};
	} forEach _teams;

	{
		[_x] execVM "monitorMission.sqf";
	} forEach ["lose1", "lose2", "end1"];

	private _guns = [papabear, ["StaticMortar", "StaticWeapon"]] call fnc_getGunsWithType;
	private _grpCallArty = [alpha, bravo, charlie, delta];
	{
		private _index = _forEachIndex % (count _grpCallArty);

		[objectParent _x, _grpCallArty select _index, 12, 50, 12, 5, true, 75] execVM "unifiedArtilleryFire.sqf";
		[objectParent _x, true] execVM "trackProjectile.sqf";
	} forEach _guns;

	[tank] execVM "manageJeepCrew.sqf";
	[heli1, 80, 0.75] execVM "flyInChopper.sqf";
	[heli2, 120, 0.25] execVM "flyInChopper.sqf";
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

	sleep 3;
	(leader papabear) sideRadio "RadioPapaBearDefendTheCityWithArtillerySupport";
	["TaskAssigned", ["Defend Athira", "Defend this city at all cost."]] call BIS_fnc_showNotification;

	// TaskFailed
	// TaskAssigned
	// TaskSucceeded
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
			private _dirRad = _dir * (pi / 180);

			// Place camera 6m behind, 2.5m up
			private _backX = -(6 * sin _dirRad);
			private _backY = -(6 * cos _dirRad);
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