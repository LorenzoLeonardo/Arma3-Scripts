fnc_getGunsWithType = {
	params ["_grp", "_kind"];
	(units _grp) select {
		!isNull objectParent _x && (objectParent _x isKindOf _kind)
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

	private _teams = [alpha, bravo, charlie, echo_mech];
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

	private _guns = [papabear, "StaticWeapon"] call fnc_getGunsWithType;
	private _grpCallArty = [alpha, bravo, charlie, delta];
	{
		private _index = _forEachIndex % (count _grpCallArty);

		[objectParent _x, _grpCallArty select _index, 12, 50, 8, 5, true, 75] execVM "unifiedArtilleryFire.sqf";
		[objectParent _x, false] execVM "trackProjectile.sqf";
	} forEach _guns;

	[tank] execVM "manageJeepCrew.sqf";
	[heli1, 80, 0.75] execVM "flyInChopper.sqf";
	[heli2, 120, 0.25] execVM "flyInChopper.sqf";
	[getMarkerPos "captives_area", 280] execVM "moveCaptives.sqf";

	{
		_x disableAI "PATH";
		_x disableAI "COVER";
		_x disableAI "SUPPRESSION";
		_x setUnitPos "UP";
		_x setBehaviour "COMBAT";
		_x setCombatMode "RED";
	} forEach units delta;

	sleep 3;
	(leader papabear) sideRadio "RadioPapaBearDefendTheCityWithArtillerySupport";
	["TaskAssigned", ["Defend Athira", "Defend this city at all cost."]] call BIS_fnc_showNotification;

	// TaskFailed
	// TaskAssigned
	// TaskSucceeded
};