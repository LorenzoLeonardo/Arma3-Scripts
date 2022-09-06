_caseoption = _this select 0;
switch (_caseoption) do
{
	case "lose1": {
		waitUntil {({(side _x) == west} count allUnits) <= 1};
		["lose1", false, true] call BIS_fnc_endMission;
	};
	case "lose2": {
		waitUntil { !(alive player) };
		["lose2", false, true] call BIS_fnc_endMission;	 
	};
	case "end1": {
		waitUntil {({(side _x) == east} count allUnits) == 0};
		["end1", false, true] call BIS_fnc_endMission;
		[west, "Base"] sideRadio "RadioPapaBearVictory";
		sleep 10;
		(leader (group player)) sideRadio "RadioGroundToPapaBearVictory";
	};
	default { hint "default" };
};

