/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will create dynamic way points for your units/groups
 *
 * Arguments:
 * 0: _group this is a group or unit object <OBJECT>
 * 1: _destinationPosition is a [x,y,z] coordinates of the destination <ARRAY>
 * 2: _wayPointSpeed this could be "FULL" "LIMITED" "NORMAL" <STRING>
 * 3: _wayPointType this is a waypont type "MOVE" "SAD" <STRING>
 * 4: _wayPointFormation this is a waypoint formation "LINE "DIAMOND" <STRING>
 * 5: _wayPointBehaviour this is a behaviour of the units "AWARE" "CARELESS" "DANGER" <STRING>
 * 6: _wayPointCombatMode this is a combat mode of the group/unit "GREEN" "RED" "BLUE" <STRING>
 * 7: _wayPointNumber this is the waypoint number, you can set from 0 to n waypoints <INTEGER>
 * Return Value:
 * The return value Array format Waypoint - [Group, index]
 *
 * Example:
 * _wayPoint = [_group, [0,0,0], "LIMITED", "MOVE", "DIAMOND", "AWARE", "BLUE", 0] call create_waypoint;
 *
 * Public: [Yes/No]
 */
create_waypoint =
{
	private _group = _this select 0;
	private _destinationPosition = _this select 1;
	private _wayPointSpeed = _this select 2;
	private _wayPointType = _this select 3;
	private _wayPointFormation = _this select 4;
	private _wayPointBehaviour = _this select 5;
	private _wayPointCombatMode = _this select 6;
	private _wayPointNumber = _this select 7;
	private _teamWP = _group addWaypoint [_destinationPosition, _wayPointNumber];
	_teamWP setWaypointSpeed _wayPointSpeed;
	_teamWP setWaypointType _wayPointType; 
	_teamWP setWaypointFormation _wayPointFormation;
	_teamWP setWaypointBehaviour _wayPointBehaviour;
	_teamWP setWaypointStatements ["true", format["_group setCombatMode %1", _wayPointCombatMode]];
	_teamWP
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will initialize the plane to use for paradrop.
 *
 * Arguments:
 * 0: _planeModel mode of the plane. Example: "CUP_B_C47_USA" <STRING>
 * 1: _dropPosition is a [x,y,z] coordinates of the paradrop destination <ARRAY>
 * 2: _initLocation is a [x,y,z] coordinates of the plane's initial position <ARRAY>
 * 3: _planeSpeed is the speed of the plan <INTEGER>
 * 4: _planeGroupName is the name of the plane group <STRING>
 * Return Value:
 * The return value Object
 *
 * Example:
 * _plane = ["CUP_B_C47_USA", [0,0,0], [0,0,0], 100, "November"] call initialize_plane;
 *
 * Public: [Yes/No]
 */
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
	_returnPlane setPosASL [(_initLocation select 0), (_initLocation select 1), (_initLocation select 2)];
	//move Pilot as plane driver
	_pilot moveInDriver _returnPlane; //move pilot as driver of the plane
	_copilot moveInAny _returnPlane;
	_groupC130J setGroupID [_planeGroupName];
	// initialize plane in the right altitude
	_returnPlane flyInHeightASL [(_initLocation select 2), (_initLocation select 2), (_initLocation select 2)];
	_returnPlane setVelocity [( sin (direction _returnPlane) * _planeSpeed),( cos (direction _returnPlane) * _planeSpeed),0];
	//set plane waypoint yDistance ahead of the dropzone position.
	_planeWPPos =  [ _dropPosition select 0, (_dropPosition select 1) + 30000, _planeAltitude];
	[_groupC130J, _planeWPPos, "LIMITED", "MOVE", "DIAMOND", "AWARE", "BLUE", 0] call create_waypoint;

	_returnPlane
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will delete the plane and its crew members.
 *
 * Arguments:
 * 0: _plane is the plane's object <OBJECT>
 * Return Value:
 * The return value None
 *
 * Example:
 * [_plane] call uninitialize_plane;
 *
 * Public: [Yes/No]
 */
uninitialize_plane =
{	
	sleep 15; 
	private _plane = _this select 0;
	// Delete plane and pilots
	{
		deleteVehicle _x;
	} foreach crew _plane;
	deleteVehicle _plane;
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will initialize the group/troops inside the plane for paradrop.
 *
 * Arguments:
 * 0: _groupName is a group or platoon name assignment <OBJECT>
 * 1: _initLocation is a [x,y,z] initial location of the group/unit <ARRAY>
 * 2: _plane is a plane object where the group/platoon will be loaded <OBJECT>
 * Return Value:
 * The return value Group object
 *
 * Example:
 * _groupPlatoon = [_groupName, _initLocation, _plane] call initialize_group_to_plane;
 *
 * Public: [Yes/No]
 */
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
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Soldier_Backpack_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];
	"CUP_B_US_Medic_OCP" createUnit [_initLocation, _groupPlatoon, _initializeMen, 1, "CORPORAL"];

	 _groupPlatoon
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will initialize the player to join the group for paradrop missions.
 *
 * Arguments:
 * 0: _plane is a plane object where the group/platoon will be loaded <OBJECT>
 * 1: _groupPlatoon is a group where player will join. <OBJECT>
 * Return Value:
 * The return value none
 *
 * Example:
 * [_plane, _groupPlatoon] call initialize_player;
 *
 * Public: [Yes/No]
 */
initialize_player =
{
	private _plane = _this select 0;
	private _groupPlatoon = _this select 1;

	player moveInCargo _plane;
	[player] joinSilent _groupPlatoon;
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will give each units of the group with parachute bag and save its
 * default bag so that we could switch it back later after paradrop.
 *
 * Arguments:
 * 0: _groupPlatoon is a group object where we add a parachute bag. <OBJECT>
 * Return Value:
 * The return value ARRAY of unit object and its corresponding loadout to save
 * so that we could switch back later after using the parachute.
 *
 * Example:
 * _defaultBackpacks = [_groupPlatoon] call set_parachute_backpack;
 *
 * Public: [Yes/No]
 */
set_parachute_backpack =
{
	private _groupPlatoon = _this select 0;
	_backPack = [];
	{
		_backPack pushBack [_x, getUnitLoadout _x];
		_x addBackpack "B_parachute";
	} foreach units _groupPlatoon;

	_backPack
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will retrieve the default back pack of the units after paradrop.
 *
 * Arguments:
 * 0: _unit is a unit of the group to be given by their default back pack. <OBJECT>
 * 1: _backPack is an array of units and corresponding backpack return by set_parachute_backpack. <ARRAY>
 * Return Value:
 * The return value None.
 *
 * Example:
 * _defaultBackpacks = [_groupPlatoon] call set_parachute_backpack;
 *
 * Public: [Yes/No]
 */
get_backpack =
{
	private _unit = _this select 0;
	private _backPack = _this select 1;

	{
		if (_x select 0 == _unit) then {
			_unit setUnitLoadout (_x select 1);
		};
	} foreach _backPack;
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will reload back the original backpack of the unit after paradrop and hitting the ground.
 *
 * Arguments:
 * 0: _paraPlayer is a unit of the group to be given by their default back pack. <OBJECT>
 * 1: _backPack is an array of units and corresponding backpack return by set_parachute_backpack. <ARRAY>
 * Return Value:
 * The return value None.
 *
 * Example:
 * [_paraPlayer, _backPack] spawn reload_inventory_when_hit_Ground;
 *
 * Public: [Yes/No]
 */
reload_inventory_when_hit_Ground =
{
    private _paraPlayer = _this select 0;
	private _backPack = _this select 1;

    waitUntil { 
		sleep 0.1;
		isTouchingGround _paraPlayer
	};
	unassignVehicle _paraPlayer;
	[_paraPlayer, _backPack] call get_backpack;
	sleep 1;
	_paraPlayer allowDamage true;
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will eject the group/platoon from the assigned plane.
 *
 * Arguments:
 * 0: _groupPlatoon is a unit of the group to be given by their default back pack. <OBJECT>
 * 1: _plane is a plane object where the group/platoon will be ejected <OBJECT>
 * 2: _backPack is an array of units and corresponding backpack return by set_parachute_backpack. <ARRAY>
 * 3: _jumpIntervalTime is the delay in seconds between each unit when jumping from the plane. <FLOAT>
 * Return Value:
 * The return value None.
 *
 * Example:
 * [_groupPlatoon, _plane, _defaultBackpacks] call eject_from_plane;
 *
 * Public: [Yes/No]
 */
eject_from_plane =
{
	private _groupPlatoon = _this select 0;
	private _plane = _this select 1;
	private _backPack = _this select 2;
	private _jumpIntervalTime = _this select 3;
	{
		_x allowDamage false;
		unassignvehicle _x;
		moveOut _x;
		[_x, _backPack] spawn reload_inventory_when_hit_Ground;
		sleep _jumpIntervalTime;
	} foreach units _groupPlatoon;
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will be used when naming for specific plane name of a specific group that needs
 * reinforcements.
 *
 * Arguments:
 * 0: _teamName is a team name of the group that need support/reinforcements <STRING>
 * Return Value:
 * The return value <STRING> name of the plane group.
 *
 * Example:
 * ["ALPHA"] call get_assigned_plane;
 *
 * Public: [Yes/No]
 */
get_assigned_plane =
{
	private _teamName = _this select 0;
	private _planeAssigned="";
	switch (_teamName) do {
		case "Alpha": {
			_planeAssigned = "November 1";
		};
		case "Bravo": {
			_planeAssigned = "November 2";
		};
		case "Charlie": {
			_planeAssigned = "November 3";
		};
		case "Delta": {
			_planeAssigned = "November 4";
		};
		default {
			hint format["%1 is not a valid squad name. Please use Alpha, Bravo, Charlie, Delta", _teamName];
		};
	};
	_planeAssigned
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will wait before executing eject_from_plane function to eject the units
 * at the target dropzone location.
 *
 * Arguments:
 * 0: _plane is a plane object where the group/platoon will be ejected <OBJECT>
 * 1: _dropPosition is a [x,y,z] coordinates of the marker where the units will be paradropped <ARRAY>
 * 2: _droppingRadius is a distance between _dropPosition center to the horizontal position of the plane. <NUMBER>
 *
 * Return Value:
 * The return value <STRING> name of the plane group.
 *
 * Example:
 * [_plane, [0,0,0], 300] call wait_until_reach_dropzone;
 *
 * Public: [Yes/No]
 */
wait_until_reach_dropzone =
{
	private _plane = _this select 0;
	private _dropPosition = _this select 1;
	private _droppingRadius = _this select 2;

	waitUntil {
		sleep 0.1;
		_distance = sqrt(abs((_dropPosition select 1) - (getpos _plane select 1))^2 + abs ((_dropPosition select 0) - (getpos _plane select 0))^2);
		_distance <= _droppingRadius 
	};
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will help the AI artillery/mortar fire at the specified destination.

 *
 * Arguments:
 * 0: _gun is a unit/mortar/artillery object <OBJECT>
 * 1: _targetPos is a marker target position in [x,y,z] cooridnates <ARRAY>
 * 2: _ammoIndex is a index of the muzzle used <INTEGER>
 * 3: _rounds is the number of rounds per call <INTEGER>
 *
 * Return Value:
 * The return value None
 *
 * Example:
 * [_gun, [0,0,0], 0, 10] call fire_artillery;
 *
 * Public: [Yes/No]
 */
fire_artillery =
{
	private _gun = _this select 0;
	private _targetPos = _this select 1;
	private _ammoIndex = _this select 2;
	private _rounds = _this select 3;

	if (alive _gun) then {
		private _ammo = getArtilleryAmmo [_gun] select _ammoIndex; 
		_gun doArtilleryFire[ _targetPos, _ammo, _rounds];
		_gun setVehicleAmmo 1;
	};
};

/*
 * Author: Lorenzo Leonardo
 * Email: enzotechcomputersolutions@gmail.com
 * This will check if artillery target is in range.

 *
 * Arguments:
 * 0: _group is a group of mortar/artillery object <OBJECT>
 * 1: _ammoIndex is a index of the muzzle used <INTEGER>
 * 2: _targetPos is a marker target position in [x,y,z] cooridnates <ARRAY>
 *
 * Return Value:
 * The return value true/false if can hit the target or not
 *
 * Example:
 * [group gun, [0,0,0], 0, 10] call is_artillery_target_in_range;
 *
 * Public: [Yes/No]
 */
is_artillery_target_in_range =
{
	private _group = _this select 0;
	private _targetPos = _this select 1;
	private _ammoIndex = _this select 2;

	private _isFeasible = true;
	{
		if ( _theLeader != _x) then {
			private _gun = vehicle _x;
			private _timeToImpact = _gun getArtilleryETA [_targetPos, getArtilleryAmmo [_gun] select _ammoIndex];
			if (_timeToImpact < 0) then {
				_isFeasible = false;
				break;
			};
		};
	} foreach units _group;

	_isFeasible
};

start_monitoring_mission_status =
{
	private _caseoption = _this select 0;
	[_caseoption] spawn {
		params ["_caseoption"];
		switch (_caseoption) do	{
			case "lose1": {
				waitUntil {
					sleep 1;
					({(side _x) == west} count allUnits) <= 1
				};
				["lose1", false, true] call BIS_fnc_endMission;
			};
			case "lose2": {
				waitUntil { 
					sleep 1;
					(alive player) == false
				};
				["lose2", false, true] call BIS_fnc_endMission;	 
			};
			case "end1": {
				waitUntil {
					sleep 1;
					({(side _x) == east} count allUnits) == 0
				};
				(leader (group player)) sideRadio "RadioGroundToPapaBearVictory";
				sleep 10;
				[west, "Base"] sideRadio "RadioPapaBearVictory";
				sleep 10;
				["end1", false, true] call BIS_fnc_endMission;
			};
			default { hint "default" };
		};
	};
};

start_monitoring_killed_units =
{
	{
		_x setSkill 1;
		_x addEventHandler ["Killed", {
			_killed = _this select 0;
			_killer = _this select 1;
			systemChat format["(%1) %2 %3 ======> (%4) %5 %6", side (group _killer), rank _killer, name _killer, side (group _killed), rank _killed, name _killed];
			[_killed] spawn {
				sleep 60;
				deleteVehicle (_this select 0);
			};
		}];
	} foreach allUnits;
};

