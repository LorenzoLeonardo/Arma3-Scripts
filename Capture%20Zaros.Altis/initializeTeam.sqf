
//Created By : Lorenzo Leonardo
/* [300,100,6000,250,"alpha_dropzone","target_1", "Alpha"] execvm "initializeTeam.sqf"; 
   [300,100,6000,250,"bravo_dropzone","target_1", "Bravo"] execvm "initializeTeam.sqf"; 
   [300,100,6000,250,"charlie_dropzone","target_1", "Charlie"] execvm "initializeTeam.sqf"; 
   [300,100,6000,250,"delta_dropzone","target_1", "Delta"] execvm "initializeTeam.sqf"; 
*/
/***********START SCRIPT*******************************************************************************************************/
#include "commonFunctions.sqf";

private _planeAltitude = _this select 0;
private _planeSpeed = _this select 1;
private _yDistance = _this select 2;
private _yDroppingRadius = _this select 3;
private _dropPosition = getMarkerPos (_this select 4);
private _objectivePosition = getMarkerPos (_this select 5);
private _groupName = _this select 6;
private _hasPlayer = _this select 7;
private _initLocation = [_dropPosition select 0,(_dropPosition select 1) - _yDistance, _planeAltitude];

if (_groupName == "Alpha") then 
{
	hint format ["Your team will start from the air."];
	playMusic "LeadTrack01_F";
	[west, "Base"] sideRadio "RadioPapaBearIntroZaros";
};

private _planeGroupName = [_groupName] call get_assigned_plane;
private _plane = ["CUP_B_C47_USA",_dropPosition, _initLocation, _planeSpeed, _planeGroupName] call initialize_plane;
private _groupPlatoon = [_groupName, _initLocation, _plane] call initialize_group_to_plane;

if (_groupName == "Alpha") then 
{

	if (_hasPlayer == true) then {
		[_plane, _groupPlatoon] call initialize_player;
	};
	["lose1"] spawn start_monitoring_mission_status;
	["lose2"] spawn start_monitoring_mission_status;
	["end1"] spawn start_monitoring_mission_status;
	[] call start_monitoring_killed_units;
	sleep 1;
	(leader _groupPlatoon) sideRadio "RadioAlphaReplyIntroZaros";
};

private _defaultBackpacks = [_groupPlatoon] call set_parachute_backpack;

[_groupPlatoon] execVM "checkCompanyStatus.sqf";

[_plane, _dropPosition, _yDroppingRadius] call wait_until_reach_dropzone;

if (_groupName == "Alpha") then 
{
	hint format["The plane is dropping paratroopers."];
	playMusic "LeadTrack01_F";
	((crew _plane) select 0) sideRadio "RadioAirbaseDropPackage";
};
[_groupPlatoon, _plane, _defaultBackpacks] call eject_from_plane;
_groupArray = units _groupPlatoon;
_teamWP = [_groupPlatoon, _dropPosition, "FULL", "MOVE", "DIAMOND", "AWARE", "GREEN", 0] call create_waypoint;

// Add way point to the dropzone position
[_plane] call uninitialize_plane;

if (_groupName == "Alpha") then 
{
	_teamWP setWaypointStatements ["true", "hint format [""Commence main assault!""];
	saveGame; [west, ""Base""] sideRadio ""RadioPapaBearCommenceTheAssault"";playMusic ""LeadTrack01_F"";"];
};

[_groupPlatoon, _objectivePosition, "FULL", "SAD", "LINE", "AWARE", "RED", 1] call create_waypoint;
/***********END SCRIPT*******************************************************************************************************/