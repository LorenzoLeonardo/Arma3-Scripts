{
	_x setSkill 1;
	_x addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		systemChat format["(%1) %2 %3 ======> (%4) %5 %6", side (group _killer), rank _killer, name _killer, side (group _unit), rank _unit, name _unit];
	}];
} foreach allUnits;

