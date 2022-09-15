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
	sleep 15; 
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

initialize_player =
{
	private _plane = _this select 0;
	private _groupPlatoon = _this select 1;

	private _backPack = getUnitLoadout player;
	player moveInCargo _plane;
	player addBackpack "B_parachute";
	[player] joinSilent _groupPlatoon;

	_backPack
};

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

reload_inventory_when_hit_Ground =
{
    private _paraPlayer = _this select 0;
	private _backPack = _this select 1;

    waitUntil { isTouchingGround _paraPlayer };
	sleep 2;
	_paraPlayer allowDamage true;
	[_paraPlayer, _backPack] call get_backpack;
};

eject_from_plane =
{
	private _groupPlatoon = _this select 0;
	private _plane = _this select 1;
	private _backPack = _this select 2;
	{
		_x allowDamage false;
		unassignvehicle _x;
		moveOut _x;
		[_x, _backPack] spawn reload_inventory_when_hit_Ground;
		sleep 0.5;
	} foreach units _groupPlatoon;
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
			hint format["%1 is not a valid squad name. Please use Alpha, Bravo, Charlie, Delta", _teamName];
		};
	};
	_planeAssigned
};

wait_until_reach_dropzone =
{
	private _plane = _this select 0;
	private _dropPosition = _this select 1;
	private _droppingRadius = _this select 2;

	waitUntil 
	{
		_distance = sqrt(abs((_dropPosition select 1) - (getpos _plane select 1))^2 + abs ((_dropPosition select 0) - (getpos _plane select 0))^2);
		_distance <= _droppingRadius 
	};
};

fire_artillery =
{
	private _gun = _this select 0;
	private _weaponIndex = _this select 1;
	private _targetPos = _this select 2;
	private _rounds = _this select 3;

	if (alive _gun) then {
			private _ammo = getArtilleryAmmo [_gun] select _weaponIndex; 
			_gun doArtilleryFire[ _targetPos, _ammo, _rounds];
			_gun setVehicleAmmo 1;
	};
};