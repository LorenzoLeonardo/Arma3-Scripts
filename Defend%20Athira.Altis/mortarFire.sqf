// [this, 1] execVM "mortarFire.sqf";
_gun = _this select 0;
_rounds = _this select 1;

while { alive _gun } do
{
	_listAlive = ((units opfor) select {alive _x});
	_targetPos = [0,0,0];
	_flag = false;
	{
		_targetPos = (getPos _x);
		if (( _targetPos distance (getPos _gun)) <= 1200 ) then
		{
			_flag = true;
			break;
		};

	} foreach _listAlive;

	if (_flag) then 
	{
		_ammo = getArtilleryAmmo [_gun] select 0; 
		_gun doArtilleryFire[ _targetPos, _ammo, _rounds];
		_gun setVehicleAmmo 1;
	};
	sleep 1;
}


