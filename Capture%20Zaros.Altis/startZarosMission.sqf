
//Created By : Lorenzo Leonardo
/* [300,100,6000,250,"alpha_dropzone","target_1", "Alpha"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"bravo_dropzone","target_1", "Bravo"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"charlie_dropzone","target_1", "Charlie"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"delta_dropzone","target_1", "Delta"] execvm "startZarosMission.sqf"; 
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
private _artilleryGroup = _this select 8;
private _initLocation = [_dropPosition select 0,(_dropPosition select 1) - _yDistance, _planeAltitude];

[_this select 5, 10000] call turn_off_city_lights;

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
	["lose1"] call start_monitoring_mission_status;
	["lose2"] call start_monitoring_mission_status;
	["end1"] call start_monitoring_mission_status;
};

[_groupPlatoon] spawn monitor_group_status;
// Radio once when engaging the enemy for the first time
{
   _x addEventHandler["Fired", {
         params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
         switch (groupId (group _unit)) do {
            case "Alpha": {
               (leader _unit) sideRadio "EngagingWithEnemyAlpha";
            };
            case "Bravo": {
               (leader _unit) sideRadio "EngagingWithEnemyBravo";
            };
            case "Charlie": {
               (leader _unit) sideRadio "EngagingWithEnemyCharlie";
            };
            case "Delta": {
               (leader _unit) sideRadio "EngagingWithEnemyDelta";
            };
         };

         {
            _x removeEventHandler ["Fired", 0];
         } foreach units (group _unit);
   }];
} foreach units _groupPlatoon;

{
	_x setSkill 1;
} foreach allUnits;

private _defaultBackpacks = [_groupPlatoon] call set_parachute_backpack;

[_plane, _dropPosition, _yDroppingRadius] call wait_until_reach_dropzone;

if (_groupName == "Alpha") then 
{
	hint format["The plane is dropping paratroopers."];
	((crew _plane) select 0) sideRadio "RadioAirbaseDropPackage";
};
[_groupPlatoon, _plane, _defaultBackpacks, 0.5] call eject_from_plane;
_groupArray = units _groupPlatoon;
_teamWP = [_groupPlatoon, _objectivePosition, "FULL", "SAD", "LINE", "AWARE", 0] call create_waypoint;

if (_groupName == "Alpha") then 
{
	saveGame; [west, "Base"] sideRadio "RadioPapaBearCommenceTheAssault";
};
_groupPlatoon setCombatMode "YELLOW";
[_groupPlatoon] execVM "checkCompanyStatus.sqf";

/***********END SCRIPT*******************************************************************************************************/