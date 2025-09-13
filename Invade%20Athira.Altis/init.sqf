#include "common.sqf"

[] spawn {
	// Put delay here to make sure all variable where initialized.
	private _time = time;
	private _isTimeout = false;
	waitUntil {
		_isTimeout = (time > _time + 5);
		!(isNil "papabear") &&
		!(isNil "alpha") &&
		!(isNil "bravo") &&
		!(isNil "charlie") &&
		(markerShape "marker_alpha" != "") &&
		(markerShape "marker_bravo" != "") &&
		(markerShape "marker_charlie" != "")||
		_isTimeout
	};

	if (_isTimeout) exitWith {
		hint "Initialization failed!";
		endMission "END1";
	};
	hint "Initialization OK!";

	[alpha, "marker_alpha"] execVM "startCompanyOnAir.sqf";
	[bravo, "marker_bravo"] execVM "startCompanyOnAir.sqf";
	[charlie, "marker_charlie"] execVM "startCompanyOnAir.sqf";

	[papabear] call ETCS_fnc_monitorSaveGame;
};

ETCS_fnc_monitorSaveGame = {
	params ["_papabear"];

	private _originalEnemyCount = [west] call ETCS_fnc_getEnemyCount;
	private _threshHoldCount = floor(_originalEnemyCount * 0.75);

	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	[_papabear, "RadioPapaBearToAllUnitsClearArea", 12] call ETCS_fnc_callSideRadio;
	["TaskSucceeded", ["Task Completed", "25% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	saveGame;

	_threshHoldCount = floor(_originalEnemyCount * 0.5);
	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	["TaskSucceeded", ["Task Completed", "50% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	sleep 8;
	saveGame;

	_threshHoldCount = floor(_originalEnemyCount * 0.25);
	while { ([west] call ETCS_fnc_getEnemyCount) > _threshHoldCount } do {
		sleep 0.5;
	};
	["TaskSucceeded", ["Task Completed", "75% of the hostile forces were eliminated."]] call BIS_fnc_showNotification;
	sleep 8;
	saveGame;

	while { ([west] call ETCS_fnc_getEnemyCount) > 0 } do {
		sleep 0.5;
	};
	["TaskSucceeded", ["Mission Completed", "All hostile forces were eliminated."]] call BIS_fnc_showNotification;
	sleep 8;
	["end1", true, true] call BIS_fnc_endMission;
};