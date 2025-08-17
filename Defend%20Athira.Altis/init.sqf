[] spawn {
    // Assign variables safely now
    sleep 2;
	systemChat "Starting..";
	
    alpha setGroupId ["Alpha"];
    bravo setGroupId ["Bravo"];
    charlie setGroupId ["Charlie"];
    delta setGroupId ["Delta"];
    papabear setGroupId ["Papa Bear"];
    november setGroupId ["November"];

    private _teams = [alpha, bravo, charlie, delta, papabear];
    {
        [_x] execVM "checkCompanyStatus.sqf";
        [_x] execVM "reviveSystem.sqf";
        if (_x != papabear) then {
            [_x] execVM "huntRemainingEnemies.sqf";
        };
    } forEach _teams;

    systemChat "1 ok";

    {
        [_x] execVM "monitorMission.sqf";
    } forEach ["lose1", "lose2", "end1"];

    systemChat "2 ok";

    [tank] execVM "manageJeepCrew.sqf";
    systemChat "3 ok";

    [heli] execVM "flyInChopper.sqf";
    systemChat "4 ok";

    private _guns = (units papabear) select {
        !isNull objectParent _x && (objectParent _x isKindOf "StaticWeapon")
    };
    private _grpCallArty = [alpha, bravo, charlie, delta];
    private _val = 0;
    {
        private _index = _val % (count _grpCallArty);
        [objectParent _x, _grpCallArty select _index, 8, 50, 8, 60, false, 75] execVM "unifiedArtilleryFire.sqf";
        [objectParent _x, papabear] execVM "manageGunCrew.sqf";
        _val = _val + 1;
    } forEach _guns;

    systemChat "5 ok";
};