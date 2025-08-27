[] spawn {
    sleep 5; // wait for mission to initialize fully
    private _ctrl = (findDisplay -1 displayCtrl 1000);

    while {true} do {
        private _blufor = {side _x isEqualTo west && alive _x} count allUnits;
        private _opfor  = {side _x isEqualTo east && alive _x} count allUnits;

        private _text = format [
            "<t font='PuristaBold' size='0.04' color='#00BFFF'>BLUFOR: %1</t><br/>" +
            "<t font='PuristaBold' size='0.04' color='#FF4040'>OPFOR: %2</t>",
            _blufor, _opfor
        ];

        _ctrl ctrlSetStructuredText parseText _text;
        sleep 1;
    };
};