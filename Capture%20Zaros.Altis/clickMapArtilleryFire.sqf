#include "commonFunctions.sqf"

fire_artillery_thread =
{
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

	_theLeader = leader artillery_group;
	private _rounds = 10;
	private _fireInterval = 1;
	{
		if ( _theLeader != _x) then {
			[vehicle _x, 0, _pos, _rounds] call fire_artillery;
		};
		sleep _fireInterval;
	} foreach units artillery_group;

	{
		waitUntil {
			sleep 1;
			unitReady _x;
		};
	} foreach units artillery_group;

	[west, "Base"] sideRadio "RadioArtilleryRoundsComplete";

	deleteMarkerLocal _callerMarker;
};

callback_artillery_fire =
{
	params ["_units", "_pos", "_alt", "_shift"];

	[_pos] spawn fire_artillery_thread;
};

addMissionEventHandler ["MapSingleClick", callback_artillery_fire];
