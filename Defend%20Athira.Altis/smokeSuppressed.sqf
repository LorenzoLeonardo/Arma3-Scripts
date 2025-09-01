#define SMOKE_COOLDOWN 20
private _units = allUnits;

{
	if (_x == leader group _x) then {
		_x setVariable ["lastSmokeTime", 0, true]; // init last throw time

		_x addEventHandler ["Suppressed", {
			params ["_unit", "_distance", "_shooter", "_ammo"];

			// Only react to enemy fire
			if (side _shooter != side _unit) then {
				private _currentTime = time;
				private _lastTime = _unit getVariable ["lastSmokeTime", 0];

				// Check cooldown
				if ((_currentTime - _lastTime) >= SMOKE_COOLDOWN) then {
					// Randomize X/Y offset for natural spread
					private _offsetX = random 5 - 2.5;
					private _offsetY = random 5 - 2.5;

					// spawn smoke 150m above the unit, with offset
					private _posSmoke = (getPosATL _unit) vectorAdd [_offsetX, _offsetY, 150];
					private _proj = "Smoke_120mm_AMOS_White" createVehicle _posSmoke;
					_proj setVelocity [0, 0, -100];

					// Update last throw time
					_unit setVariable ["lastSmokeTime", _currentTime, true];
				};
			};
		}];
	};
} forEach _units;