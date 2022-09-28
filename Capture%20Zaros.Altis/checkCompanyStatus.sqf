//_handle = [this] execVM "checkCompanyStatus.sqf"; _grppatrol = _this select 0;
private _group = _this select 0;
private _Array = units _group;
private _totalUnits = count _Array;
private _radioUnit = _Array select 0;
private _grpName = groupId _group;

while{ (count _Array > (_totalUnits/3)) && (alive player) } do {
	{
		if(!alive _x) then {
			_Array = _Array - [_x];
			_radioUnit = _Array select 0;
		};
	} foreach _Array;
	sleep 1;
};

if( alive player ) then
{
	private _callerTexMarker = str format["Requesting Paradrop Support (%1)",_grpName];
	_callerMarker = createMarkerLocal[_callerTexMarker, position _radioUnit];
	_callerMarker setMarkerSizeLocal[1,1];
	_callerMarker setMarkerShapeLocal "ICON";
	_callerMarker setMarkerTypeLocal "hd_warning";
	_callerMarker setMarkerDirLocal 0;
	_callerMarker setMarkerTextLocal _callerTexMarker;
	private _flrObj = "F_40mm_Red" createvehicle ((_radioUnit) ModelToWorld [0,0,200]);  
	_flrObj setVelocity [0,0,-1];

	switch (_grpName) do {
		case "Alpha": {
			"SmokeShellArty" createVehicle (getMarkerPos _callerTexMarker);
			_callerMarker setMarkerColorLocal "ColorBlue";
			_radioUnit sideRadio "RadioAlphaWipedOut";
			sleep 2;
			[west, "Base"] sideRadio "RadioPapaBearReplyWipedOut";
		};

		case "Bravo": {
			"SmokeShellArty" createVehicle (getMarkerPos _callerTexMarker);
			_callerMarker setMarkerColorLocal "ColorRed";
			_radioUnit sideRadio "RadioBravoWipedOut";
			sleep 2;
			[west, "Base"] sideRadio "RadioPapaBearReplyWipedOut";
		};

		case "Charlie":	{
			"SmokeShellArty" createVehicle (getMarkerPos _callerTexMarker);
			_callerMarker setMarkerColorLocal "ColorYellow";
			_radioUnit sideRadio "RadioCharlieWipedOut";
			sleep 2;
			[west, "Base"] sideRadio "RadioPapaBearReplyWipedOut";
		};

		case "Delta": {
			"SmokeShellArty" createVehicle (getMarkerPos _callerTexMarker);
			_callerMarker setMarkerColorLocal "ColorOrange";
			_radioUnit sideRadio "RadioDeltaWipedOut";
			sleep 2;
			[west, "Base"] sideRadio "RadioPapaBearReplyWipedOut";
		};

		default	{
		};
	};
	if( count _Array > 0) then {
		{
			if(!alive _x) then {
				_Array = _Array - [_x];
				_radioUnit = _Array select 0;
			};
		} foreach _Array;
		sleep 2;
		[_radioUnit, 300, 100, 3000, 400, _callerTexMarker] execvm "dropSupportTeam.sqf";
	};
};