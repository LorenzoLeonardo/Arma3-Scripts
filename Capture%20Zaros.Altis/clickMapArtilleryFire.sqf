#include "commonFunctions.sqf"

missionNamespace setVariable ["_artillery_group", _this select 0];

fire_artillery_thread =
{
	private _group = missionNamespace getVariable "_artillery_group";
	private _pos = _this select 0;
	private _callerTexMarker = str format["Requesting Artillery Fire Support"];
	private _callerMarker = createMarkerLocal[_callerTexMarker, _pos];
	_callerMarker setMarkerSizeLocal[1,1];
	_callerMarker setMarkerShapeLocal "ICON";
	_callerMarker setMarkerTypeLocal "hd_warning";
	_callerMarker setMarkerDirLocal 0;
	_callerMarker setMarkerTextLocal _callerTexMarker;
	_callerMarker setMarkerColorLocal "ColorBlue";
	player sideRadio "RadioArtillerySupportAlpha";
	[west, "Base"] sideRadio "RadioArtillerySupportReplyAlpha";
	hint _callerTexMarker;

	private _theLeader = leader _group;
	private _rounds = 10;
	private _fireInterval = 1;
	{
		if ( _theLeader != _x) then {
			[vehicle _x, 0, _pos, _rounds] call fire_artillery;
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

	deleteMarkerLocal _callerMarker;
};

addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];
	private _group = _this select 0;
	[_pos] spawn fire_artillery_thread;
}];
