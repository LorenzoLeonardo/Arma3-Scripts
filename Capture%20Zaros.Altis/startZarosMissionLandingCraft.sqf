
//Created By : Lorenzo Leonardo
/* [300,100,6000,250,"alpha_dropzone","target_1", "Alpha"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"bravo_dropzone","target_1", "Bravo"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"charlie_dropzone","target_1", "Charlie"] execvm "startZarosMission.sqf"; 
   [300,100,6000,250,"delta_dropzone","target_1", "Delta"] execvm "startZarosMission.sqf"; 
*/
/***********START SCRIPT*******************************************************************************************************/
#include "commonFunctions.sqf";

private _landingCraftAltitude = _this select 0;
private _landingCraftSpeed = _this select 1;
private _yDistance = _this select 2;
private _initLocation = getMarkerPos (_this select 3);
private _dropPosition = getMarkerPos (_this select 4);
private _objectivePosition = getMarkerPos (_this select 5);
private _groupName = _this select 6;
private _hasPlayer = _this select 7;
private _artilleryGroup = _this select 8;

private _landingCraftGroupName = "Golf";
private _landingCraft = ["CUP_B_LCU1600_USMC", _initLocation, _dropPosition, _landingCraftSpeed, _landingCraftGroupName] call initialize_landing_craft;
private _groupPlatoon = [_groupName, _initLocation, _landingCraft] call initialize_group_to_landing_craft;

if (_hasPlayer == true) then {
	[_landingCraft, _groupPlatoon] call initialize_player;
};
_teamWP = [_groupPlatoon, _objectivePosition, "FULL", "SAD", "LINE", "AWARE", "RED", 0] call create_waypoint;
_groupPlatoon setCombatMode "RED";
[_groupPlatoon] execVM "checkCompanyStatus.sqf";

/***********END SCRIPT*******************************************************************************************************/