//Created By : Lorenzo Leonardo
//Example : nul=[player,300,30,1000,500,"drop position","objective marker name", "Alpha"] execvm "main.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "main.sqf";
//parameters
_caller = _this select 0;
_planeAltitude = _this select 1;
_planeSpeed = _this select 2;
_yDistance = _this select 3;
_yDroppingRadius = _this select 4;
_dropPosition = getMarkerPos (_this select 5);
_objectivePosition = getMarkerPos (_this select 6);
_groupName = _this select 7;
_group setGroupID [_groupName];

[west, "Base"] sideRadio "RadioPapaBearToAlphaTeamDoridaIntro";

_initLocation = [_dropPosition select 0,(_dropPosition select 1) - _yDistance,_planeAltitude];
playMusic "LeadTrack01_F";
hint format ["Wait for your unit"];
//create a group of the plane
_groupC130J = createGroup west;
//create C130
_plane = createVehicle ["CUP_B_C130J_USMC", _initLocation, [], 0, "FLY"];
//create Pilot
_pilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];
_copilot = _groupC130J createUnit ["CUP_B_US_Pilot", _initLocation, [], 0, "CARGO"];
//move Pilot as plane driver
_pilot moveInDriver _plane; //move pilot as driver of the plane
_copilot moveInAny _plane;
_groupC130J setGroupID ["November"];
// initialize plane in the right altitude
_plane flyInHeight _planeAltitude;

// set velocity and direction of the plane
_planeDefaultVelocity = velocity _plane;
_planeDefaultDirection = direction _plane;
_plane setVelocity [( sin _planeDefaultDirection * _planeSpeed),( cos _planeDefaultDirection * _planeSpeed),0];
[_plane, _planeAltitude] execVM "flyinheightasl.sqf";
 _pilot action ["lightOff", _plane];

//set plane waypoint yDistance ahead of the dropzone position.
_planeWPPos =  [ _dropPosition select 0, (_dropPosition select 1) + 30000, _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position
_planeWP setWaypointSpeed "LIMITED";
_planeWP setWaypointType "MOVE"; 
_planeWP setWaypointFormation "DIAMOND";
_planeWP setWaypointBehaviour "SAFE";

// create alpha team
_groupAlphaTeam = createGroup west; 
_groupAlphaTeam setGroupIdGlobal ["Alpha Team"];
_initializeMen = "this moveInCargo _plane;this setAmmo [primaryWeapon this, 1000000];this setAmmo [handgunWeapon this, 10];";
"CUP_B_US_Soldier_TL_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "LIEUTENANT"];
"CUP_B_US_Sniper_M107_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
"CUP_B_US_Spotter_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "SERGEANT"];
"CUP_B_US_Soldier_MG_OCP" createUnit [_initLocation, _groupAlphaTeam, _initializeMen, 1, "CORPORAL"];
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

// give each men their parachute bag
{
	_x addBackpack "B_parachute";
} foreach units _groupAlphaTeam;

["lose1"] execVM "monitorMission.sqf";
["lose2"] execVM "monitorMission.sqf";
["end1"] execVM "monitorMission.sqf";

hint format["Wait for your squad here."];

waitUntil 
{
	_distance = (_dropPosition select 1) - (getpos _plane select 1);
	_distance <= _yDroppingRadius 
};

hint format["The plane is dropping paratroopers."];

_pilot sideRadio "RadioAirbaseDropPackage";
{
	unassignvehicle _x;
	_x action ["getOut", _plane];
	sleep 0.5;

} foreach units _groupAlphaTeam;

hint format["Your leader will come to you. Wait for him."];
// Add way point to the dropzone position
_supportTeamWP = _groupAlphaTeam addWaypoint [_dropPosition, 0]; 
_supportTeamWP setWaypointSpeed "FULL";
_supportTeamWP setWaypointType "MOVE"; 
_supportTeamWP setWaypointFormation "DIAMOND";
_supportTeamWP setWaypointBehaviour "AWARE";

sleep 60; 

deleteVehicle _plane;
deleteVehicle _copilot;
deleteVehicle _pilot;

_supportTeamWP = _groupAlphaTeam addWaypoint [_dropPosition, 0]; // Add way point to caller's position
_supportTeamWP setWaypointSpeed "FULL";
_supportTeamWP setWaypointType "MOVE"; 
_supportTeamWP setWaypointFormation "DIAMOND";
_supportTeamWP setWaypointBehaviour "AWARE";

waitUntil {unitReady (leader _groupAlphaTeam)};

hint format ["Join alpha team"];

[player] join _groupAlphaTeam;

// wait for everyone before going to the assault mission
{
	waitUntil { ((getPos _x) distance _dropPosition) <= 50 } 
} foreach units _groupAlphaTeam;

hint format ["Assault Dorida at all cost."];

playMusic "LeadTrack03_F";

// start monitoring your team
[_groupAlphaTeam] execVM "checkCompanyStatus.sqf";

_supportTeamWP = _groupAlphaTeam addWaypoint [_objectivePosition, 0]; // Add way point to the mission target
_supportTeamWP setWaypointSpeed "FULL";
_supportTeamWP setWaypointType "SAD"; 
_supportTeamWP setWaypointFormation "LINE";
_supportTeamWP setWaypointBehaviour "AWARE";