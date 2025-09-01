ETCS_fnc_spawnSmokeCircle = {
	params [
		["_smokeType", "SmokeShell", [""]],
		["_centerPos", [0, 0, 0], [[]]],
		["_radius", 10, [0]],
		["_count", 6, [0]]
	];

	private _angleStep = 360 / _count;

	for "_i" from 0 to (_count - 1) do {
		private _angle = _i * _angleStep;

		private _offsetX = _radius * cos _angle;
		private _offsetY = _radius * sin _angle;

		private _pos = [
			(_centerPos select 0) + _offsetX,
			(_centerPos select 1) + _offsetY,
			(_centerPos select 2)
		];

		_smokeType createVehicle _pos;
	};
};

ETCS_fnc_spawnSmokeArc = {
	params [
		["_smokeType", "SmokeShell", [""]],
		["_centerPos", [0, 0, 0], [[]]],
		["_radius", 10, [0]],
		["_count", 6, [0]],
		["_totalAngle", 360, [0]],
		["_startAngle", 0, [0]]
	];

	private _angleStep = _totalAngle / _count;

	for "_i" from 0 to (_count - 1) do {
		private _angle = _startAngle + (_i * _angleStep);

		private _offsetX = _radius * cos _angle;
		private _offsetY = _radius * sin _angle;

		private _pos = [
			(_centerPos select 0) + _offsetX,
			(_centerPos select 1) + _offsetY,
			(_centerPos select 2)
		];
		private _proj = _smokeType createVehicle [0,0,100];
		_proj setPosATL (_pos vectorAdd [0,0,150]); // spawn above
		_proj setVelocity [0,0,-100];        
	};
};

ETCS_fnc_spawnSmokeRandomWithinRadius = {
	params [
		["_smokeType", "SmokeShell", [""]],
		["_centerPos", [0, 0, 0], [[]]],
		["_radius", 10, [0]],
		["_count", 5, [0]]
	];

	for "_i" from 1 to _count do {
		private _angle = random 360;
		private _dist = random _radius;

		private _offsetX = _dist * cos _angle;
		private _offsetY = _dist * sin _angle;

		private _pos = [
			(_centerPos select 0) + _offsetX,
			(_centerPos select 1) + _offsetY,
			(_centerPos select 2)
		];

		_smokeType createVehicle _pos;
	};
};