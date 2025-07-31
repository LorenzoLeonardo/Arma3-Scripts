/*
    setSharedTFARFreq.sqf
    ----------------------
    Force players in specified groups to share a TFAR frequency for both SR and LR radios.
    Applies after respawn as well.

    Parameters:
        0: ARRAY - Groups or arrays of units (e.g., [Team1, Team2])
        1: STRING - Frequency (e.g., "50.0")

    Example:
        [ [Team1, Team2], "50.0" ] execVM "shareRadio.sqf";
*/

params ["_groups", "_frequency"];

private _allUnits = [];
{
    if (_x isEqualType grpNull) then {
        _allUnits append (units _x);
    } else {
        _allUnits append _x;
    };
} forEach _groups;

// Function to set the player's TFAR radios
private _applyRadio = {
    params ["_unit", "_freq"];

    if (!isPlayer _unit) exitWith {};

    // Wait until TFAR is ready (radio assigned)
    [_unit, _freq] spawn {
        params ["_u", "_f"];
        waitUntil { sleep 1; !isNull (_u call TFAR_fnc_activeSwRadio) };
        
        private _sr = _u call TFAR_fnc_activeSwRadio;
        if (!isNil "_sr") then { [_sr, _f] call TFAR_fnc_setSwFrequency; };

        private _lr = _u call TFAR_fnc_activeLrRadio;
        if (!isNil "_lr") then { [_lr, _f] call TFAR_fnc_setLrFrequency; };
    };
};

// Apply to all units now and on respawn
{
    [_x, _frequency] call _applyRadio;

    // Re-apply after respawn
    _x addEventHandler ["Respawn", {
        params ["_unit"];
        [_unit, _thisArgs select 0] call (_thisArgs select 1);
    }, [_frequency, _applyRadio]];
} forEach _allUnits;