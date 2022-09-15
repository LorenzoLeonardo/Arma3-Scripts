//Created By : Lorenzo Leonardo
//Example : nul=[player,300,30,1000,500, "marker_variable"] execvm "dropSupportTeam.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "dropSupportTeam.sqf";
//parameters
#include "commonFunctions.sqf"

private _caller = _this select 0;
private _planeAltitude = _this select 1;
private _planeSpeed = _this select 2;
private _yDistance = _this select 3;
private _yDroppingRadius = _this select 4;
private _seizeMarkerName = _this select 5;
private _callerPosition = getMarkerPos _seizeMarkerName;
private _planeGroupName = [groupId (group _caller)] call get_assigned_plane;
private _initLocation = [_callerPosition select 0,(_callerPosition select 1) - _yDistance, _planeAltitude];
private _plane = ["CUP_B_C47_USA",_callerPosition, _initLocation, _planeSpeed, _planeGroupName] call initialize_plane;
private _groupPlatoon = ["Alpha", _initLocation, _plane] call initialize_group_to_plane;
private _backPack = [_groupPlatoon] call set_parachute_backpack;
private _groupArrayBeforeJoin = units _groupPlatoon;

hint format ["Reinforcements is coming your way."];
_groupPlatoon copyWaypoints (group _caller);

//Wait and Check the plane distance to the marker before starting unloading troops
[_plane, _callerPosition, _yDroppingRadius, _planeAltitude] call wait_until_reach_dropzone;

//hint format ["Paratroopers are now jumping from the air"];
((crew _plane) select 0) sideRadio "RadioAirbaseDropPackage";
[_groupPlatoon, _plane, _backPack] call eject_from_plane;

deleteMarkerLocal _seizeMarkerName;
[_plane] call uninitialize_plane;

(units _groupPlatoon) join (group _caller);
