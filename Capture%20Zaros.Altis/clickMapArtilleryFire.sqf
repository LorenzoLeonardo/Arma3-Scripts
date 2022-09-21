#include "commonFunctions.sqf"

missionNamespace setVariable ["_artillery_group", _this select 0];

fire_artillery_thread =
{
	private _group = _this select 0;
	private _pos = _this select 1;
	private _ammoIndex = _this select 2;
	private _callerTexMarker = str format["Requesting Artillery Fire Mission"];
	private _callerMarker = createMarkerLocal[_callerTexMarker, _pos];
	_callerMarker setMarkerSizeLocal[1,1];
	_callerMarker setMarkerShapeLocal "ICON";
	_callerMarker setMarkerTypeLocal "mil_destroy";
	_callerMarker setMarkerDirLocal 45;
	_callerMarker setMarkerTextLocal _callerTexMarker;
	_callerMarker setMarkerColorLocal "ColorBlue";
	player sideRadio "RadioArtillerySupportAlpha";
	hint _callerTexMarker;
	private _theLeader = leader _group;
	private _rounds = 10;
	private _fireInterval = 1;
	private _isInRange = [_group, _pos, _ammoIndex] call is_artillery_target_in_range;
	if (_isInRange == true) then {
		[west, "Base"] sideRadio "RadioArtillerySupportReplyAlpha";
		{
			if ( vehicle _x != _x) then {
				[vehicle _x, _pos, _ammoIndex, _rounds] call fire_artillery;
			};
			sleep _fireInterval;
		} foreach units _group;
		{
			waitUntil {
				sleep 1;
				unitReady _x;
			};
		} foreach units _group;
		[west, "Base"] sideRadio "RadioArtilleryRoundsComplete";
	} else {
		[west, "Base"] sideRadio "RadioArtillerySupportReplyAlphaTargetOutOfRange";
	};
	deleteMarkerLocal _callerMarker;
};

addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];
	private _group =  missionNamespace getVariable "_artillery_group";
	private _isReady = true;
	private _ammoIndex = 0;
	{
		if ((unitReady _x) == false) then {
			_isReady = false;
			break;
		};
	} foreach units _group;

	if (_isReady == true) then {
		[_group, _pos, _ammoIndex] spawn fire_artillery_thread;
	} else {
		player sideRadio "RadioArtillerySupportAlpha";
		[west, "Base"] sideRadio "RadioArtillerySupportReplyAlphaBusy";
	};
}];
