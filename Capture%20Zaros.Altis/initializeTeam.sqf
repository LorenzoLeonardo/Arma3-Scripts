//Created By : Lorenzo Leonardo
//Example : nul=[player,300,30,1000,500,"drop position","objective marker name", "Alpha"] execvm "main.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "main.sqf";
//parameters

/***********START FUNCTIONS******************************************************************************************************/
// Sample Usage: [_groupPlatoon, _objectivePosition, "LIMITED", "MOVE", "DIAMOND", "SAFE"] call create_waypoint;
create_waypoint =
{
	private _group = _this select 0;
	private _destinationPosition = _this select 1;
	private _wayPointSpeed = _this select 2;
	private _wayPointType = _this select 3;
	private _wayPointFormation = _this select 4;
	private _wayPointBehaviour = _this select 5;
	private _wayPointNumber = _this select 6;
	private _teamWP = _group addWaypoint [_destinationPosition, _wayPointNumber];
	_teamWP setWaypointSpeed _wayPointSpeed;
	_teamWP setWaypointType _wayPointType; 
	_teamWP setWaypointFormation _wayPointFormation;
	_teamWP setWaypointBehaviour _wayPointBehaviour;

	_teamWP
};
// CUP_B_C47_USA
//_plane = ["CUP_B_C130J_USMC", _dropPosition, _initLocation, _planeSpeed] call initialize_plane;
initialize_plane =
{	
	private _planeModel = _this select 0;
	private _dropPosition = _this select 1;
	private _initLocation = _this select 2;
	private _planeSpeed = _this select 3;
	private _planeGroupName = _this select 4;
	//create a group of the plane
	private _groupC130J = createGroup west;
	//create C130
	private _returnPlane = createVehicle [_planeModel, _initLocation, [], 0, "FLY"];
	//create Pilot
	private _pilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];
	private _copilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];

	//move Pilot as plane driver
	_pilot moveInDriver _returnPlane; //move pilot as driver of the plane
	_copilot moveInAny _returnPlane;
	_groupC130J setGroupID [_planeGroupName];
	// initialize plane in the right altitude
	_returnPlane flyInHeightASL [(_initLocation select 2), (_initLocation select 2), (_initLocation select 2)];
	_returnPlane setVelocity [( sin (direction _returnPlane) * _planeSpeed),( cos (direction _returnPlane) * _planeSpeed),0];
	//set plane waypoint yDistance ahead of the dropzone position.
	_planeWPPos =  [ _dropPosition select 0, (_dropPosition select 1) + 30000, _planeAltitude];
	[_groupC130J, _planeWPPos, "LIMITED", "MOVE", "DIAMOND", "AWARE", 0] call create_waypoint;

	_returnPlane
};

uninitialize_plane =
{	
	private _plane = _this select 0;
	// Delete plane and pilots
	{
		deleteVehicle _x;
	} foreach crew _plane;
	deleteVehicle _plane;
};
initialize_group_to_plane =
{
	private _groupName = _this select 0;
	private _initLocation = _this select 1;
	private _plane = _this select 2;
	private _groupPlatoon = createGroup west; 
	private _initializeMen = "this moveInCargo _plane;";
	
	_groupPlatoon setGroupId [_groupName];
	"CUP_B_US_Soldier_TL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "LIEUTENANT"];
	"CUP_B_US_Soldier_Marksman_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_Marksman_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_LAT_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_LAT_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_LAT_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_LAT_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_ACOG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_ACOG_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];

	private _oldbackPacks=[];
	{
		 
		_oldbackPacks  pushBack (getUnitLoadout _x);
		_x addBackpack "CUP_T10_Parachute_backpack";
	} foreach units _groupPlatoon;

	private _groupPlusBackpack = [];

	 _groupPlusBackpack pushBack _groupPlatoon;
	 _groupPlusBackpack pushBack _oldbackPacks;

	 _groupPlusBackpack
};

initialize_player =
{
	private _plane = _this select 0;
	private _groupPlatoon = _this select 1;
	private _backPack = getUnitLoadout player;
	player moveInCargo _plane;
	player addBackpack "CUP_T10_Parachute_backpack";
	[player] joinSilent _groupPlatoon;

	_backPack
};

switch_back_default_backpack =
{
	private _groupArray = _this select 0;
	private _oldBackPack = _this select 1;
	private _index = 0;
	{
		_men = (_groupArray select _index);
		if (alive _men) then {
			_men setUnitLoadout _x;
		};
		_index = _index + 1;
	} foreach _oldBackPack;
};

eject_from_plane =
{
	private _groupPlatoon = _this select 0;
	private _plane = _this select 1;
	{
		unassignvehicle _x;
		moveout _x;
		sleep 0.5;
	} foreach units _groupPlatoon;
	sleep 60; 
};

get_assigned_plane =
{
	private _teamName = _this select 0;
	private _planeAssigned="";
	switch (_teamName) do
	{
		case "Alpha":
		{
			_planeAssigned = "November 1";
		};
		case "Bravo":
		{
			_planeAssigned = "November 2";
		};
		case "Charlie":
		{
			_planeAssigned = "November 3";
		};
		case "Delta":
		{
			_planeAssigned = "November 4";
		};
		default
		{
		};
	};
	_planeAssigned
};
/***********END FUNCTIONS******************************************************************************************************/

// [300,30,1000,500,"alpha_dropzone","target_1", "Alpha"] execvm "initializeTeam.sqf"; 
// [300,30,1000,500,"bravo_dropzone","target_1", "Bravo"] execvm "initializeTeam.sqf"; 
/***********START SCRIPT*******************************************************************************************************/
_planeAltitude = _this select 0;
_planeSpeed = _this select 1;
_yDistance = _this select 2;
_yDroppingRadius = _this select 3;
_dropPosition = getMarkerPos (_this select 4);
_objectivePosition = getMarkerPos (_this select 5);
_groupName = _this select 6;
_initLocation = [_dropPosition select 0,(_dropPosition select 1) - _yDistance, _planeAltitude];

if (_groupName == "Alpha") then 
{
	hint format ["Your team will start from the air."];
	playMusic "LeadTrack01_F";
	[west, "Base"] sideRadio "RadioPapaBearIntroZaros";
};

_planeGroupName = [_groupName] call get_assigned_plane;
_plane = ["CUP_B_C47_USA",_dropPosition, _initLocation, _planeSpeed, _planeGroupName] call initialize_plane;
_groupPlusBackpack = [_groupName, _initLocation, _plane] call initialize_group_to_plane;
_groupPlatoon = _groupPlusBackpack select 0;
_oldBackPack = _groupPlusBackpack select 1;
if (_groupName == "Alpha") then 
{
	_playerBackPack = [_plane, _groupPlatoon] call initialize_player;
	_oldBackPack pushBack _playerBackPack;

	["lose1"] execVM "monitorMission.sqf";
	["lose2"] execVM "monitorMission.sqf";
	["end1"] execVM "monitorMission.sqf";
};

[_groupPlatoon] execVM "checkCompanyStatus.sqf";

waitUntil 
{
	_distance = (_dropPosition select 1) - (getpos _plane select 1);
	_distance <= _yDroppingRadius 
};

if (_groupName == "Alpha") then 
{
	hint format["The plane is dropping paratroopers."];
	playMusic "LeadTrack01_F";
	((crew _plane) select 0) sideRadio "RadioAirbaseDropPackage";
};
[_groupPlatoon, _plane] call eject_from_plane;
_groupArray = units _groupPlatoon;

[_groupArray, _oldBackPack] call switch_back_default_backpack;

// Add way point to the dropzone position
[_plane] call uninitialize_plane;
_teamWP = [_groupPlatoon, _dropPosition, "FULL", "MOVE", "DIAMOND", "AWARE", 0] call create_waypoint;

if (_groupName == "Alpha") then 
{
	_teamWP setWaypointStatements ["true", "hint format [""Commence main assault!""];
	saveGame; [west, ""Base""] sideRadio ""RadioPapaBearCommenceTheAssault"";playMusic ""LeadTrack01_F"";"];
};


_teamWP = [_groupPlatoon, _objectivePosition, "FULL", "SAD", "LINE", "AWARE", 1] call create_waypoint;
/***********END SCRIPT*******************************************************************************************************/