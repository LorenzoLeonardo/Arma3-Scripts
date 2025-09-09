#include "common.sqf"

params ["_caseoption", "_papaBear"];

switch (_caseoption) do
{
	case "lose1": {
		while {
			({
				(side _x) == west
			} count allUnits) > 1
		} do {
			sleep 0.5;
		};
		["TaskFailed", ["Mission Failed", "You have been wiped out from the city."]] call BIS_fnc_showNotification;
		["lose1", false, true] call BIS_fnc_endMission;
	};
	case "lose2": {
		while { alive player } do {
			sleep 0.5;
		};
		["TaskFailed", ["Mission Failed", "Player has died"]] call BIS_fnc_showNotification;
		["lose2", false, true] call BIS_fnc_endMission;
	};
	case "end1": {
		while {
			({
				(side _x) == east
			} count allUnits) > 0
		} do {
			sleep 0.5;
		};
		["TaskSucceeded", ["Mission Accomplished", "All hostile forces are eliminated."]] call BIS_fnc_showNotification;
		[(group player), "RadioGroundToPapaBearVictory", 10] call ETCS_fnc_callSideRadio;
		[_papaBear, "RadioPapaBearVictory", 60] call ETCS_fnc_callSideRadio;
		["end1", true, true] call BIS_fnc_endMission;
	};
	default {
		hint "default"
	};
};