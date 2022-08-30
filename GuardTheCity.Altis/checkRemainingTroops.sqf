grpAlpha = _this select 0;
grpBravo = _this select 1;
grpCharlie = _this select 2;
grpDelta = _this select 3;



killsNumAlpha = 0;
killsNumBravo = 0;
killsNumCharlie = 0;
killsNumDelta = 0;


friendlyKillsNumAlpha = 0;
friendlyKillsNumBravo = 0;
friendlyKillsNumCharlie = 0;
friendlyKillsNumDelta = 0;


killedEH = {
   _killed = _this select 0;
   _killer = _this select 1;

	_text = toArray(str(group _killer));
	_text set[0,"**DELETE**"];
	_text set[1,"**DELETE**"];
	_text = _text - ["**DELETE**"];
	_grpNameKiller = toString(_text);

	_text = toArray(str(group _killed));
	_text set[0,"**DELETE**"];
	_text set[1,"**DELETE**"];
	_text = _text - ["**DELETE**"];
	_grpNameKilled = toString(_text);
	
	_grpAlphaArray = units grpAlpha;
	_grpBravoArray = units grpBravo;
	_grpCharlieArray = units grpCharlie;
	_grpDeltaArray = units grpDelta;
	
	_countAlpha = count _grpAlphaArray;
	_countBravo = count _grpBravoArray;
	_countCharlie = count _grpCharlieArray;
	_countDelta = count _grpDeltaArray;

	
	switch (_grpNameKiller) do
	{
		case "Alpha":
		{
			if( _killer != _killed) then
			{
				if ( side (group _killer) != side (group _killed) ) then
				{
					killsNumAlpha = killsNumAlpha + 1;
				}
				else
				{
					friendlyKillsNumAlpha = friendlyKillsNumAlpha + 1;			
				};
			};
		};

		case "Bravo":
		{
			if( _killer != _killed) then
			{
				if ( side (group _killer) != side (group _killed) ) then
				{
					killsNumBravo = killsNumBravo + 1;
				}
				else
				{
					friendlyKillsNumBravo = friendlyKillsNumBravo + 1;	
				};
			};
		};

		case "Charlie":
		{
			if( _killer != _killed) then
			{
				if ( side (group _killer) != side (group _killed) ) then
				{
					killsNumCharlie = killsNumCharlie + 1;
				}
				else
				{
					friendlyKillsNumCharlie = friendlyKillsNumCharlie + 1;			
				};
			};
		};
		case "Delta":
		{
			if( _killer != _killed) then
			{
				if ( side (group _killer) != side (group _killed) ) then
				{
					killsNumDelta = killsNumDelta + 1;
				}
				else
				{
					friendlyKillsNumDelta = friendlyKillsNumDelta + 1;			
				};
			};
		};
		default
		{
		};
	};
	
	{
		if ( !alive _x ) then
		{
			__grpAlphaArray = __grpAlphaArray -[_x];
			_countAlpha = count _grpAlphaArray;
		};
	} foreach _grpAlphaArray;

	{
		if ( !alive _x ) then
		{
			_grpBravoArray = _grpBravoArray -[_x];
			_countBravo = count _grpBravoArray;
		};
	} foreach _grpBravoArray;

	{
		if ( !alive _x ) then
		{
			_grpCharlieArray = _grpCharlieArray -[_x];
			_countCharlie = count _grpCharlieArray;
		};
	} foreach _grpCharlieArray;

	{
		if ( !alive _x ) then
		{
			_grpDeltaArray = _grpDeltaArray -[_x];
			_countDelta = count _grpDeltaArray;
		};
	} foreach _grpDeltaArray;
	
	if( _killer != _killed) then
	{
		_killerRank = (rank _killer);
		_killerName = (name _killer);

		systemChat format ["[%1] %2 %3 >>> [%4] %5 %6", _grpNameKiller, _killerRank, _killerName, _grpNameKilled, (rank _killed), (name _killed)];

		hint format["Team        Kills     Friendly\n
					Alpha(%1)    %2        %3\n
					Bravo(%4)    %5        %6\n
					Charlie(%7)  %8        %9\n
					Delta(%10)   %11       %12\n\n",_countAlpha, killsNumAlpha, friendlyKillsNumAlpha,
													_countBravo, killsNumBravo, friendlyKillsNumBravo, 
													_countCharlie, killsNumCharlie, friendlyKillsNumCharlie, 
													_countDelta, killsNumDelta, friendlyKillsNumDelta];	
	}
	else
	{
		systemChat format ["[%1] %2 %3 >>> SUICIDE!", _grpNameKilled, (rank _killed), (name _killed)];
	};
};

{
   _x addEventHandler ["killed", killedEH];
} forEach allUnits;


