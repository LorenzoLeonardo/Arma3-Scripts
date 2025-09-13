#include "common.sqf"
#include "paraDropHelpers.sqf"
#include "reviveSystem.sqf"

params ["_group", "_marker"];

[_group, _marker] spawn {
	params ["_group", "_marker"];

	private _paraDropMarkerName = _marker;
	// Plane's cruising altitude
	private _planeAltitude = 200;
	// Plan starts at 5, 000 meters south of the drop zone
	private _yDistance = 5000;
	// Plane's speed
	private _planeSpeed = 150;
	// Radius of from the center of the drop where to start dropping troops.
	private _yDroppingRadius = 400;
	// Get Assigned plane's name
	private _planeGroupName = [groupId _group] call ETCS_fnc_getAssignedPlane;
	private _paraDropLocation = getMarkerPos _paraDropMarkerName;
	// Initial location of the plane
	private _initLocation = [_paraDropLocation select 0, (_paraDropLocation select 1) - _yDistance, _planeAltitude];
	// Create the plane
	private _plane = [west, "CUP_B_US_Pilot", "CUP_B_C130J_USMC", _paraDropLocation, _initLocation, _planeSpeed, _planeGroupName] call ETCS_fnc_initializePlane;

	// Always Turn off lights
	_plane setCollisionLight false;
	_plane disableAI "LIGHTS";

	[_group] call ETCS_fnc_registerReviveSystem;
	// Start executing the paradrop system.
	[_plane, _group] call ETCS_fnc_loadGroupToPlane;
	[leader _group, _plane, _planeAltitude, _yDroppingRadius, _paraDropLocation, _group] call ETCS_fnc_executeParaDrop;

	["TaskSucceeded", ["Task Completed", format ["%1 Assault team has arrived for %1.", groupId _group]]] call BIS_fnc_showNotification;

	while { ([_group] call ETCS_fnc_getEnemyCount) > 0 } do {
		private _aliveEnemies = [_group] call ETCS_fnc_getAllEnemies;
		private _target = [leader _group, _aliveEnemies] call ETCS_fnc_findNearestUnit;

		hint format ["Objective Updated: Hunt %1 remaining enemies.", count _aliveEnemies];
		if (!(isNull _target) && alive _target) then {
			private _targetPos = getPos _target;
			// Clear waypoints
			[_group] call ETCS_fnc_clearWaypoints;
			private _marker = [_target, format["Kill %1", groupId _group], "mil_destroy", "ColorBlack"] call ETCS_fnc_createMarker;
			// Add new waypoint to target
			private _wp = [_group, getPos _target, "FULL", "DESTROY", "LINE", "AWARE", 0, "RED"] call ETCS_fnc_createWaypoint;

			[_target, _group] call ETCS_fnc_waitUntilTargetDead;
			deleteMarker _marker;
		} else {
			// Target is invalid, just wait a moment
			systemChat "Target invalid, waiting...";
			sleep 1;
		};
	};
};

ETCS_fnc_waitUntilTargetDead = {
	params ["_target", "_squad"];
	private _timeNow = time;
	while {
		[_target] call ETCS_fnc_isUnitGood &&
		(([_squad] call ETCS_fnc_getEnemyCount) > 0) &&
		(time <= (_timeNow + 60))
	} do {
		sleep 0.5;
	};
};

ETCS_fnc_getAssignedPlane = {
	private _teamName = _this select 0;
	private _planeAssigned="";
	switch (toLower _teamName) do {
		case "alpha": {
			_planeAssigned = "November (Alpha)";
		};
		case "bravo": {
			_planeAssigned = "November (Bravo)";
		};
		case "charlie": {
			_planeAssigned = "November (Charlie)";
		};
		case "delta": {
			_planeAssigned = "November (Delta)";
		};
		case "echo": {
			_planeAssigned = "November (Echo)";
		};
		default {
			hint format["%1 is not a valid squad name. Please use Alpha, Bravo, Charlie, Delta", _teamName];
		};
	};
	_planeAssigned
};

addMissionEventHandler ["Draw3D", {
	private _grp = group player;
	private _wpIndex = currentWaypoint _grp;
	private _wpPos = waypointPosition [_grp, _wpIndex];

	// Build label
	private _wpType = waypointType [_grp, _wpIndex];
	if (_wpType isEqualTo "") exitWith {};
	private _wpText = format ["Kill Enemy (%1 m)", round (player distance _wpPos)];

	_wpPos set [2, (_wpPos select 2) + 2];
	// Draw icon + text
	drawIcon3D [
		"\A3\ui_f\data\map\markers\military\arrow2_CA.paa",
		[0, 1, 0, 1],
		_wpPos, // position
		0.5, 0.5, // icon size
		180, // icon angle
		_wpText, // text
		2, // shadow
		0.035, // text size
		"PuristaBold", // font
		"center", // align
		true, // drawThrough
		0, // textShiftX
		-0.04 // textShiftY (lift text above icon)
	];
}];