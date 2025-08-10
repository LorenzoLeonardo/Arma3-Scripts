private _gun = _this param [0];

fnc_destroyNearbyVegetation = {
	params ["_pos", "_radius"];
	if (isNil "_radius") then {
		_radius = 30
	};

	    // 1) terrain vegetation (best-effort; often empty on many maps)
	private _terrainObjs = nearestTerrainObjects [_pos, ["TREE", "SMALL TREE", "BUSH"], _radius, false];

	    // 2) editor/simple objects (catch trees/bushes placed in Eden)
	    private _allSimple = allSimpleObjects []; // returns all simple objects when given []
	private _nearSimple = _allSimple select {
		(_x distance _pos) < _radius
	};

	    // filter by className keywords (case-insensitive)
	private _vegCandidates = _nearSimple select {
		private _t = toLower typeOf _x;
		(_t find "tree") > -1 || (_t find "bush") > -1 || (_t find "shrub") > -1 || (_t find "sapling") > -1
	};

	    // debug info (remove or comment out in production)
	systemChat format ["terrain: %1, simple: %2, vegCandidates: %3",
	count _terrainObjs, count _nearSimple, count _vegCandidates];

	    // 3) Hide/delete found objects (hide is safer for baked/LOD objects)
	{
		// try delete first (works for editor-placed destructible objects)
		deleteVehicle _x;
		        // fallback - hide for everyone
		_x hideObjectGlobal true;
	} forEach (_terrainObjs + _vegCandidates);

	    // 4) if nothing found, spawn visual fallback (small local explosion/smoke)
	if ((count (_terrainObjs + _vegCandidates)) == 0) then {
		// visual feedback so strikes still feel impactful
		private _expl = "LandExplosionSmall" createVehicleLocal _pos;
		        // remove helpers after a while
		[_expl] spawn {
			params ["_e"];
			sleep 6;
			if (!isNull _e) then {
				deleteVehicle _e
			};
		};
	};

	true
};
// In artillery unit's init field:
_gun addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];

	fnc_monitorProjectile = {
		params ["_proj"];
		waitUntil {
			sleep 0.05;
			isNull _proj
		};
		private _pos = getPosATL _proj;
		[_pos] spawn fnc_destroyNearbyVegetation;
	};

	    // Only process explosive shells
	if (_projectile isKindOf "ShellBase") then {
		[_projectile] spawn fnc_monitorProjectile;
	};
}];