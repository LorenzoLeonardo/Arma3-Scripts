private _units = allUnits;

{
	_x addEventHandler ["Suppressed", {
		params ["_unit", "_distance", "_shooter", "_ammo"];
		if (side _shooter != side _unit) then {
			private _posSmoke = (getPosATL _unit) vectorAdd [0, 0, 150];
			private _proj = "SmokeShell" createVehicle _posSmoke;

			_proj setVelocity [0, 0, -100];
		};
	}];
} forEach _units;