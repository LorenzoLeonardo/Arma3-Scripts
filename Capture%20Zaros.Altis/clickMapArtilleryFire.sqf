#include "commonFunctions.sqf"

missionNamespace setVariable ["_artillery_group", _this select 0];

addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];
	private _group =  missionNamespace getVariable "_artillery_group";

	[player, _group, _pos, _ammoIndex] spawn call_artillery_fire_mission;
}];
