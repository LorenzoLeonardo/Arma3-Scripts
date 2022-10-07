private _tank = _this select 0;
private _destinationPos = getMarkerPos (_this select 1);
private _radius = _this select 2;
waitUntil {
	sleep 1;
	_distance = sqrt(abs((_destinationPos select 1) - (getpos _tank select 1))^2 + abs ((_destinationPos select 0) - (getpos _tank select 0))^2);
	_distance <= _radius 
};

[west, "Base"] sideRadio "EnemyTanksSpotted";