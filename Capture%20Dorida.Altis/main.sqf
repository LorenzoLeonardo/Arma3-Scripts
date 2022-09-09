//Created By : Lorenzo Leonardo
//Example : nul=[player,300,30,1000,500,"drop position","objective marker name", "Alpha"] execvm "main.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "main.sqf";
//parameters

/***********START FUNCTIONS******************************************************************************************************/
// Sample Usage: [_groupAlphaTeam, _objectivePosition, "LIMITED", "MOVE", "DIAMOND", "SAFE"] call create_waypoint;
create_waypoint =
{
	private _group = _this select 0;
	private _destinationPosition = _this select 1;
	private _wayPointSpeed = _this select 2;
	private _wayPointType = _this select 3;
	private _wayPointFormation = _this select 4;
	private _wayPointBehaviour = _this select 5;		
	private _supportTeamWP = _group addWaypoint [_destinationPosition, 0];
	_supportTeamWP setWaypointSpeed _wayPointSpeed;
	_supportTeamWP setWaypointType _wayPointType; 
	_supportTeamWP setWaypointFormation _wayPointFormation;
	_supportTeamWP setWaypointBehaviour _wayPointBehaviour;
};

//_plane = [_dropPosition, _initLocation, _planeSpeed] call initialize_plane;
initialize_plane =
{	
	private _dropPosition = _this select 0;
	private _initLocation = _this select 1;
	private _planeSpeed = _this select 2;
	//create a group of the plane
	private _groupC130J = createGroup west;
	//create C130
	private _returnPlane = createVehicle ["CUP_B_C130J_USMC", _initLocation, [], 0, "FLY"];
	//create Pilot
	private _pilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];
	private _copilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];

	//move Pilot as plane driver
	_pilot moveInDriver _returnPlane; //move pilot as driver of the plane
	_copilot moveInAny _returnPlane;
	_groupC130J setGroupID ["November"];
	// initialize plane in the right altitude
	_returnPlane flyInHeight _planeAltitude;
	_returnPlane setVelocity [( sin (direction _returnPlane) * _planeSpeed),( cos (direction _returnPlane) * _planeSpeed),0];
	[_returnPlane, _planeAltitude] execVM "flyinheightasl.sqf";
	//set plane waypoint yDistance ahead of the dropzone position.
	_planeWPPos =  [ _dropPosition select 0, (_dropPosition select 1) + 30000, _planeAltitude];
	[_groupC130J, _planeWPPos, "LIMITED", "MOVE", "DIAMOND", "SAFE"] call create_waypoint;

	_returnPlane
};

initialize_group_to_plane =
{
	private _initLocation = _this select 0;
	private _plane = _this select 1;
	private _groupAlphaTeam = createGroup west; 
	private _initializeMen = "this moveInCargo _plane;this setAmmo [primaryWeapon this, 1000000];this setAmmo [handgunWeapon this, 10];";
	
	_groupAlphaTeam setGroupId ["Alpha"];
	"CUP_B_US_Soldier_TL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "LIEUTENANT"];
	"CUP_B_US_Soldier_Marksman_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_Marksman_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
	"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_GL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_ACOG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_ACOG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_ACOG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];

	// return this group
	_groupAlphaTeam
};
/***********END FUNCTIONS******************************************************************************************************/

/***********START SCRIPT*******************************************************************************************************/
_caller = _this select 0;
_planeAltitude = _this select 1;
_planeSpeed = _this select 2;
_yDistance = _this select 3;
_yDroppingRadius = _this select 4;
_dropPosition = getMarkerPos (_this select 5);
_rendezvousPosition =  getMarkerPos (_this select 6);
_objectivePosition = getMarkerPos (_this select 7);
_groupName = _this select 8;
_groupBravoTeam = _this select 9;
_initLocation = [_dropPosition select 0,(_dropPosition select 1) - _yDistance, _planeAltitude];
[west, "Base"] sideRadio "RadioPapaBearToAlphaTeamDoridaIntro";

playMusic "LeadTrack01_F";
hint format ["Your team will start from the air."];

_plane = [_dropPosition, _initLocation, _planeSpeed] call initialize_plane;
_groupAlphaTeam = [_initLocation, _plane] call initialize_group_to_plane;

player moveInCargo _plane;
[player] joinSilent _groupAlphaTeam;

["lose1"] execVM "monitorMission.sqf";
["lose2"] execVM "monitorMission.sqf";
["end1"] execVM "monitorMission.sqf";
// start monitoring your team
[_groupAlphaTeam] execVM "checkCompanyStatus.sqf";

// give each men their parachute bag
{
	_x addBackpack "B_parachute";
} foreach units _groupAlphaTeam;

waitUntil 
{
	_distance = (_dropPosition select 1) - (getpos _plane select 1);
	_distance <= _yDroppingRadius 
};

hint format["The plane is dropping paratroopers."];
playMusic "LeadTrack01_F";

((crew _plane) select 0) sideRadio "RadioAirbaseDropPackage";
{
	unassignvehicle _x;
	_x action ["getOut", _plane];
	sleep 0.5;
} foreach units _groupAlphaTeam;

// Add way point to the dropzone position
 [_groupAlphaTeam, _dropPosition, "FULL", "MOVE", "DIAMOND", "AWARE"] call create_waypoint;

sleep 60; 

// Delete plane and pilots
{
	deleteVehicle _x;
} foreach crew _plane;
deleteVehicle _plane;

 [_groupAlphaTeam, _dropPosition, "FULL", "MOVE", "DIAMOND", "AWARE"] call create_waypoint;

waitUntil {unitReady (leader _groupAlphaTeam)};

// wait for everyone before going to the assault mission
{
	waitUntil { ((getPos _x) distance _dropPosition) <= 60 } 
} foreach units _groupAlphaTeam;

hint format ["Head for the rendezvous point"];
playMusic "LeadTrack03_F";

[_groupAlphaTeam, _rendezvousPosition, "FULL", "MOVE", "DIAMOND", "AWARE"] call create_waypoint;

waitUntil {unitReady (leader _groupAlphaTeam)};

// wait for everyone before going to the assault mission
{
	waitUntil { ((getPos _x) distance _rendezvousPosition) <= 60 } 
} foreach units _groupAlphaTeam;
(units _groupBravoTeam) join _groupAlphaTeam;

hint format ["Commence main assault!"];
playMusic "LeadTrack01_F";

[_groupAlphaTeam, _objectivePosition, "FULL", "SAD", "LINE", "AWARE"] call create_waypoint;

/***********END SCRIPT*******************************************************************************************************/
