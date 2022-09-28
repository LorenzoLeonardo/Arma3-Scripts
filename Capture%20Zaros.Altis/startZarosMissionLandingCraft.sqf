
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

private _landingCraftGroupName = [_groupName] call get_assigned_landing_craft;
private _landingCraft = ["CUP_B_LCU1600_USMC", _initLocation, _dropPosition, _landingCraftSpeed, _landingCraftGroupName] call initialize_landing_craft;
private _groupPlatoon = [_groupName, _initLocation, _landingCraft] call initialize_group_to_landing_craft;

if (_hasPlayer == true) then {
	[_landingCraft, _groupPlatoon] call initialize_player;
};
[_groupPlatoon] execVM "checkCompanyStatus.sqf";
_teamWP = [_groupPlatoon, _dropPosition, "FULL", "MOVE", "LINE", "AWARE", "RED", 0] call create_waypoint;
_groupPlatoon setCombatMode "RED";

sleep 2;
 waitUntil { unitReady (driver _landingCraft) };

switch(groupId _groupPlatoon) do {
   case "Alpha": {
   };
   case "Bravo": {
   };
   case "Charlie": {
      (leader _groupPlatoon) sideRadio "CharlieLandedBeach";
      sleep 2;
      [west, "Base"] sideRadio "CharlieLandedBeachPapaBearReply";
      sleep 2;
   };
   case "Delta": {
      (leader _groupPlatoon) sideRadio "DeltaLandedBeach";
      sleep 2;
      [west, "Base"] sideRadio "DeltaLandedBeachPapaBearReply";
      sleep 2;
   };
};

{
   waitUntil { 
      sleep 1;
      (_x in _landingCraft) == false
   };
} foreach units _groupPlatoon;

switch(groupId _groupPlatoon) do {
		case "Alpha": {
		};
		case "Bravo": {
		};
		case "Charlie": {
			(leader _groupPlatoon) sideRadio "CharlieMovingToObjective";

		};
		case "Delta": {
			(leader _groupPlatoon) sideRadio "DeltaMovingToObjective";
		};
	};

_teamWP = [_groupPlatoon, _objectivePosition, "FULL", "SAD", "LINE", "AWARE", "RED", 0] call create_waypoint;

/***********END SCRIPT*******************************************************************************************************/