_caseoption = _this select 0;
switch (_caseoption) do
{
	case "lose1": {
		waitUntil {
			({
				(side _x) == west
			} count allUnits) <= 1
		};
		["TaskFailed", ["Mission Failed", "You have been wiped out from the city."]] call BIS_fnc_showNotification;
		["lose1", false, true] call BIS_fnc_endMission;
	};
	case "lose2": {
		waitUntil {
			!(alive player)
		};
		["TaskFailed", ["Mission Failed", "Player has died"]] call BIS_fnc_showNotification;
		["lose2", false, true] call BIS_fnc_endMission;
	};
	case "end1": {
		waitUntil {
			({
				(side _x) == east
			} count allUnits) == 0
		};
		["TaskSucceeded", ["Mission Accomplished", "All hostile forces are eliminated."]] call BIS_fnc_showNotification;
		(leader (group player)) sideRadio "RadioGroundToPapaBearVictory";
		sleep 10;
		[west, "Base"] sideRadio "RadioPapaBearVictory";
		sleep 60;
		["end1", true, true] call BIS_fnc_endMission;
	};
	default {
		hint "default"
	};
};