#include "commonFunctions.sqf"


private _vehicleArray = _this select 0;

{
	[_x] spawn attach_unlimited_fire;
} foreach _vehicleArray;