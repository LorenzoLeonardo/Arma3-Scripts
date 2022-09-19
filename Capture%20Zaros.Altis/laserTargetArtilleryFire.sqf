#include "commonFunctions.sqf"

fire_artillery_thread =
{
	private _group = _this select 0;
	private _pos = _this select 1;
	private _ammoIndex = _this select 2;
	private _callerTexMarker = str format["Requesting Artillery Fire Mission"];
	private _callerMarker = createMarkerLocal[_callerTexMarker, _pos];
	_callerMarker setMarkerSizeLocal[1,1];
	_callerMarker setMarkerShapeLocal "ICON";
	_callerMarker setMarkerTypeLocal "mil_destroy";
	_callerMarker setMarkerDirLocal 45;
	_callerMarker setMarkerTextLocal _callerTexMarker;
	_callerMarker setMarkerColorLocal "ColorBlue";
	player sideRadio "RadioArtillerySupportAlpha";
	hint _callerTexMarker;
	private _theLeader = leader _group;
	private _rounds = 10;
	private _fireInterval = 1;
	private _isInRange = [_group, _pos, _ammoIndex] call is_artillery_target_in_range;
	if (_isInRange == true) then {
		[west, "Base"] sideRadio "RadioArtillerySupportReplyAlpha";
		{
			if ( _theLeader != _x) then {
				[vehicle _x, _pos, _ammoIndex, _rounds] call fire_artillery;
			};
			sleep _fireInterval;
		} foreach units _group;
		{
			waitUntil {
				sleep 1;
				unitReady _x;
			};
		} foreach units _group;
		[west, "Base"] sideRadio "RadioArtilleryRoundsComplete";
	} else {
		[west, "Base"] sideRadio "RadioArtillerySupportReplyAlphaTargetOutOfRange";
	};
	deleteMarkerLocal _callerMarker;
};

if (isLaserOn player) then {
	private _group =  _this select 0;
	private _isReady = true;
	private _ammoIndex = 0;
	private _targetPos = getPosATL laserTarget player;
	private _playerPos = getPosATL player;
	private _minimumRange = 200;
	private _distance = sqrt(abs((_targetPos select 1) - (_playerPos select 1))^2 +
										 abs ((_targetPos select 0) - (_playerPos select 0))^2);
	
	if (_distance > _minimumRange) then {
		{
			if ((unitReady _x) == false) then {
				_isReady = false;
				break;
			};
		} foreach units _group;

		if (_isReady == true) then {
			[_group, _targetPos, _ammoIndex] call fire_artillery_thread;
		} else {
			player sideRadio "RadioArtillerySupportAlpha";
			[west, "Base"] sideRadio "RadioArtillerySupportReplyAlphaBusy";
		};
	} else {
		hint format ["The target is too near from you! It must be %1 meters away.", _minimumRange];		
	};
} else {
	hint format ["Your laser designator device is off!"];
};
