/*
    autoMedicSupport.sqf
    Usage: [medicGroup] execVM "autoMedicSupport.sqf";

    - medicGroup: The group (not a single unit) of medics who will patrol and auto-heal any friendlies.
*/

params ["_medicGroup"];

// Global or script-local array to track claimed targets
private _healingTargets = [];

{
    private _medic = _x;

    [_medic, _healingTargets] spawn {
        params ["_medic", "_healingTargets"];

        while {alive _medic} do {
            // Find nearest friendly injured unit not already being healed
            private _targets = nearestObjects [_medic, ["Man"], 1000];
            _targets = _targets select {
                (side _x == side _medic) &&
                (_x != _medic) &&
                (alive _x) &&
                (damage _x > 0.1) &&          // Heal if more than 10% damage (90% health)
                !(_x in _healingTargets)      // Not already being healed
            };

            if (count _targets > 0) then {
                private _target = _targets select 0;

                // Claim this target so no other medic picks it
                _healingTargets pushBack _target;

                // Move to the target
                _medic doMove (getPos _target);

                // Wait until close or target/medic dead
                waitUntil {
                    sleep 0.5;
                    (_medic distance _target) < 3 || !alive _target || !alive _medic
                };

                if (alive _medic && alive _target) then {
                    // Play healing animation
                    _medic playMove "AinvPknlMstpSnonWnonDnon_medic";
                    sleep 5;

                    // Heal and revive
                    _target setDamage 0;
                    _target setUnconscious false;

                    // Reset animation
                    _medic switchMove "";
                };

                // Release target (even if failed)
                _healingTargets = _healingTargets - [_target];
            };

            sleep 2; // avoid heavy loop
        };
    };
} forEach units _medicGroup;