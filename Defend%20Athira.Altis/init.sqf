[] spawn {
	// Put delay here to make sure all variable where initialized.
    waitUntil {
        !(isNil "alpha") &&
        !(isNil "bravo") &&
        !(isNil "charlie") &&
        !(isNil "delta") &&
        !(isNil "papabear") &&
        !(isNil "november1") &&
		!(isNil "november2") &&
		!(isNil "tank") &&
		!(isNil "heli1") &&
		!(isNil "heli2")
    };
	hint "Initialization OK!";

	alpha setGroupId ["Alpha"];
	bravo setGroupId ["Bravo"];
	charlie setGroupId ["Charlie"];
	delta setGroupId ["Delta"];
	papabear setGroupId ["Papa Bear"];
	november1 setGroupId ["November (1)"];
	november2 setGroupId ["November (2)"];

	private _teams = [alpha, bravo, charlie, delta, papabear];
	{
		[_x] execVM "reviveSystem.sqf";
		if (_x != papabear) then {
            [_x, papabear] execVM "checkCompanyStatus.sqf";
			[_x] execVM "huntRemainingEnemies.sqf";
		};
	} forEach _teams;

	{
		[_x] execVM "monitorMission.sqf";
	} forEach ["lose1", "lose2", "end1"];

	[tank] execVM "manageJeepCrew.sqf";
	[heli1, 80, 0.75] execVM "flyInChopper.sqf";
	[heli2, 120, 0.5] execVM "flyInChopper.sqf";

	[getMarkerPos "captives_area", 280] execVM "moveCaptives.sqf";

	private _guns = (units papabear) select {
		!isNull objectParent _x && (objectParent _x isKindOf "StaticWeapon")
	};
	private _grpCallArty = [alpha, bravo, charlie];
	private _val = 0;
	{
		private _index = _val % (count _grpCallArty);
		[objectParent _x, _grpCallArty select _index, 8, 50, 8, 60, true, 150] execVM "unifiedArtilleryFire.sqf";
		[objectParent _x, papabear] execVM "manageGunCrew.sqf";
		[objectParent _x] execVM "trackProjectile.sqf";
		_val = _val + 1;
	} forEach _guns;
};
