#include "commonFunctions.sqf"

if (isLaserOn player) then {
	private _group =  _this select 0;
	private _ammoIndex = 0;
	private _targetPos = getPosATL laserTarget player;
	private _playerPos = getPosATL player;
	private _minimumRange = 200;
	private _distance = sqrt(abs((_targetPos select 1) - (_playerPos select 1))^2 +
										 abs ((_targetPos select 0) - (_playerPos select 0))^2);
	
	if (_distance > _minimumRange) then {
		[player, _group, _targetPos, _ammoIndex] call call_artillery_fire_mission;
	} else {
		hint format ["The target is too near from you! It must be %1 meters away.", _minimumRange];		
	};
} else {
	hint format ["Your laser designator device is off!"];
};
