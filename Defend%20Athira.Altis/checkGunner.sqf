_gun50cal = _this select 0;
_groupName = _this select 1;

// Make .50 cal invincible
_gun50cal allowDamage false;

// Ensure it never runs out of ammo
[_gun50cal] spawn {
    params ["_gun50cal"];
    while {alive _gun50cal} do {
        _gun50cal setVehicleAmmo 1;  // Refill ammo continuously
        sleep 1;                     // Check every second
    };
};

_newStartIndex = 1;
// Mission will fail if only one left
while{({ alive _x } count (units _groupName)) > 1} do
{
	// This will check if the assigned gunner is killed in this 50 cal machine gun.
	_countAlive = {alive _x} count (crew _gun50cal);
	if(_countAlive <= 0 ) then
	{
		_groupArray = units _groupName;
		_index = _newStartIndex;
		_groupmember = _groupArray select _index;
		// We are only interested with an alive member of the group.
		if ( alive _groupmember ) then
		{
			_hasAssignedVehicle = isNull (assignedVehicle _groupmember);
			// If the current member is already assigned to a 50 cal gun, we check the next member of the group.
			// If the current member is inside the 50 cal gun
			// If is a player
			// Proceed to next unit
			while {(_groupmember in _gun50cal) or (!_hasAssignedVehicle) or (isPlayer _groupmember)} do
			{
				_index=_index+1;
				if (_index >= count _groupArray) exitWith {
					// No suitable member found, break loop
					_groupmember = objNull;
				};
			    _groupmember = _groupArray select _index;
				_hasAssignedVehicle = isNull (assignedVehicle _groupmember);
			};
			_groupmember assignAsGunner _gun50cal;
			[_groupmember] orderGetIn true;
			waitUntil { ({alive _x} count (crew _gun50cal)) > 0 };
		}
		else
		{
			_newStartIndex = _newStartIndex + 1;
		};
	}
	else
	{
		sleep 1;
	};
};
