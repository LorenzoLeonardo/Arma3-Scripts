//Created By : Lorenzo Leonardo
//Example : nul=[player,300,50,1000] execvm "dropSupportTeam.sqf"; 
//nul=[calling unit = player,altitude = 300, planespeed = 50, plane yDistance From caller = 1000, startdropping radius = 100, _seizemarkerName] execvm "dropSupportTeam.sqf";
//parameters
_caller = _this select 0;
_planeAltitude = _this select 1;
_planeSpeed = _this select 2;
_yDistance = _this select 3;
_yDroppingRadius = _this select 4;

_caller sideChat format["Come in Papa Bear. We need reinforcements in this area. Over?"];
_callerTexMarker = str format["%1 : Requesting Reinforcements.",_caller];
_callerMarker = createMarkerLocal [_callerTexMarker, position _caller];
_callerMarker setMarkerSizeLocal [1,1];
_callerMarker setMarkerShapeLocal "ICON";
_callerMarker setMarkerTypeLocal "hd_destroy";
_callerMarker setMarkerDirLocal 45;
_callerMarker setMarkerTextLocal _callerTexMarker;
_callerPosition = getMarkerPos _callerMarker;

uiSleep 5;

//create a group of the plane
_groupC130J = createGroup west;
//create C130
_plane = createVehicle ["B_T_VTOL_01_infantry_F",[0,0,_planeAltitude], [], 0, "FLY"];
//create Pilot
_pilot = _groupC130J createUnit ["B_Pilot_F", [0,0,1], [], 0, "CARGO"];
//move Pilot as plane driver
_pilot moveInDriver _plane; //move pilot as driver of the plane

//initialize the position of the plane. With respect to the caller
_plane setpos [ _callerPosition select 0, (_callerPosition select 1) - _yDistance, _planeAltitude];
_plane flyInHeight _planeAltitude;

//Set velocity and direction of the plane
_planeDefaultVelocity = velocity _plane;
_planeDefaultDirection = direction _plane;
_plane setVelocity [( sin _planeDefaultDirection * _planeSpeed),( cos _planeDefaultDirection * _planeSpeed),0];

//create a support team
_groupSupportTeam = createGroup west; 
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "LIEUTENANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "SERGEANT"];
"B_soldier_PG_F" createUnit [[0,0,1], _groupSupportTeam, "this moveInCargo _plane", 1, "CORPORAL"];

_supportTeamArray = units _groupSupportTeam;
_total = count _supportTeamArray;
addSwitchableUnit (_supportTeamArray select 1);
//set plane waypoint yDistance ahead of the caller.
_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1), _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position
_planeWP setWaypointSpeed "LIMITED";
_planeWP setWaypointType "MOVE"; 
_planeWP setWaypointFormation "DIAMOND";
_planeWP setWaypointBehaviour "CARELESS";

_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1) + _yDistance, _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position

_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1) + (_yDistance * 2), _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position

_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1) + (_yDistance * 3), _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position

_distance = _callerPosition distance _plane;
_distance = sqrt ((_distance * _distance)  - ( _planeAltitude * _planeAltitude) );
[West, "HQ"] sideChat format["Copy that %1. Reinforcements coming your way. ETA %2 secs. Out!", _caller, _distance/_planeSpeed];

//Wait and Check the plane distance to the marker before starting unloading troops
hint "Support plane is approaching.";

waitUntil 
{
	_distance = _callerPosition distance _plane;
	_distance = sqrt ((_distance * _distance)  - ( _planeAltitude * _planeAltitude) ); // check the horizontal distance of plane from the marker, start dropping at given yRadius

	_distance <= _yDroppingRadius 
};
_plane animateDoor ['Door_1_source', 1];
uiSleep 3;
hint "Support plane is dropping reinforcements.";
	
{
	unassignvehicle _x;
	_x action ["EJECT", _plane];
	unassignvehicle _x;
} foreach _supportTeamArray;

//set waypoint for the reinforcements
_supportTeamWP = _groupSupportTeam addWaypoint [_callerPosition, 0]; // Add way point to caller's position
_supportTeamWP setWaypointSpeed "FULL";
_supportTeamWP setWaypointType "MOVE"; 
_supportTeamWP setWaypointFormation "DIAMOND";
_supportTeamWP setWaypointBehaviour "AWARE";

//10 second sleep before deleting plane and pilot
uiSleep 10; 
_planeSpeed = _planeSpeed * 5;
_plane setVelocity [( sin _planeDefaultDirection * _planeSpeed),( cos _planeDefaultDirection * _planeSpeed),0];
_planeWPPos =  [ _callerPosition select 0, (_callerPosition select 1) + (_yDistance * 500), _planeAltitude];
_planeWP = _groupC130J addWaypoint [_planeWPPos, 0]; // Add way point to caller's position
_planeWP setWaypointSpeed "FULL";
_planeWP setWaypointType "MOVE"; 
_planeWP setWaypointFormation "DIAMOND";
_planeWP setWaypointBehaviour "CARELESS";

uiSleep 20; 

deleteVehicle _plane;
deleteVehicle _pilot;
deleteMarkerLocal _callerMarker;

_supportTeamArray join (group player);
