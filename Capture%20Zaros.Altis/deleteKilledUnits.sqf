callback_killed_unit =
{
   _killed = _this select 0;
   _killer = _this select 1;
	systemChat format["(%1) %2 %3 ======> (%4) %5 %6", side (group _killer), rank _killer, name _killer, side (group _killed), rank _killed, name _killed];
	[_killed] spawn {
		sleep 60;
		deleteVehicle (_this select 0);
	};
};

{
	_x setSkill 1;
	_x addEventHandler ["Killed", callback_killed_unit];
} foreach allUnits;

