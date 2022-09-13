//Created By : Lorenzo Leonardo
//Example : nul=[player,300,30,1000,500, "marker_variable"] execvm "dropSupportTeam.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "dropSupportTeam.sqf";
//parameters
_caller = _this select 0;
_planeAltitude = _this select 1;
_planeSpeed = _this select 2;
_yDistance = _this select 3;
_yDroppingRadius = _this select 4;
_seizeMarkerName = _this select 5;
_callerPosition = getMarkerPos _seizeMarkerName;
_planeGroupName = "";

switch (groupId (group _caller)) do
{
	case "Alpha":
	{
		_planeGroupName = "November 1";
	};
	case "Bravo":
	{
		_planeGroupName = "November 2";
	};
	case "Charlie":
	{
		_planeGroupName = "November 3";
	};
	case "Delta":
	{
		_planeGroupName = "November 4";
	};
	default
	{
	};
};

hint format ["Reinforcements is coming your way."];
//create a group of the plane
_groupC130J = createGroup west;
//create Pilot
_pilotC130J = _groupC130J createUnit ["CUP_B_US_Pilot", [0,0,1], [], 0, "CARGO"];
//Set Group ID For Plane Drop Support
_groupC130J setGroupID [_planeGroupName];
_pilotC130J sideRadio "RadioAirbaseSupport";

//create C130
_planeC130J = createVehicle ["CUP_B_C47_USA",[0,0,_planeAltitude], [], 0, "FLY"];
//move Pilot as plane driver
_pilotC130J moveInDriver _planeC130J; //move pilot as driver of the C130
_planeC130J setDir 0;

//initialize the position of the plane. With respect to the caller
_planeC130J setpos [ _callerPosition select 0, (_callerPosition select 1) - _yDistance, _planeAltitude];
_planeC130J flyInHeight _planeAltitude;

//Set velocity and direction of the plane
_planeDefaultVelocity = velocity _planeC130J;
_planeDefaultDirection = direction _planeC130J;
_planeC130J flyInHeightASL [_planeAltitude, _planeAltitude, _planeAltitude];
_planeC130J setVelocity [( sin _planeDefaultDirection * _planeSpeed),( cos _planeDefaultDirection * _planeSpeed),0];

//set plane waypoint yDistance ahead of the caller.
_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1) + 30000, _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position
_planeWP setWaypointSpeed "LIMITED";
_planeWP setWaypointType "MOVE"; 
_planeWP setWaypointFormation "LINE";
_planeWP setWaypointBehaviour "AWARE";

//create a support team
_groupSupportTeam = createGroup west; 
"CUP_B_US_Soldier_TL_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "LIEUTENANT"];
"CUP_B_US_Sniper_M107_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "SERGEANT"];
"CUP_B_US_Spotter_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "SERGEANT"];
"CUP_B_US_Soldier_MG_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "SERGEANT"];
"CUP_B_US_Soldier_MG_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_GL_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_GL_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_GL_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_ACOG_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_ACOG_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_ACOG_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Soldier_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Medic_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];
"CUP_B_US_Medic_OCP" createUnit [[0,0,0], _groupSupportTeam, "this moveInCargo _planeC130J", 1, "CORPORAL"];

_supportTeamArray = units _groupSupportTeam;
_total = count _supportTeamArray;
_oldbackPacks = [];
{
	_oldbackPacks  pushBack (getUnitLoadout _x);
	_x addBackpack "B_Parachute";
} foreach _supportTeamArray;

_distance = _callerPosition distance _planeC130J;//hypotenuse
_distance = sqrt ((_distance * _distance)  - ( _planeAltitude * _planeAltitude) ); // horizontal distance

hint format ["Reinforcements will join your group"];
_groupSupportTeam copyWaypoints (group _caller);
_supportTeamArray join (group _caller);

//Wait and Check the plane distance to the marker before starting unloading troops
waitUntil 
{
	_distance = _callerPosition distance _planeC130J;
	_distance = sqrt ((_distance * _distance)  - ( _planeAltitude * _planeAltitude) ); // check the horizontal distance of plane from the marker, start dropping at given yRadius

	_distance <= _yDroppingRadius
};
hint format ["Paratroopers are now jumping from the air"];
_pilotC130J sideRadio "RadioAirbaseDropPackage";
  
{
	unassignvehicle _x;
	moveout _x;
	sleep 0.25;
} foreach _supportTeamArray;

//10 second sleep before deleting plane and pilot
sleep 60; 
_i = 0;
{
	_men = (_supportTeamArray select _i);
	if (alive _men) then {
		_men setUnitLoadout _x;
	};
	_i = _i + 1;
} foreach _oldbackPacks;

deleteVehicle _planeC130J;
deleteVehicle _pilotC130J;
deleteMarkerLocal _seizeMarkerName;
