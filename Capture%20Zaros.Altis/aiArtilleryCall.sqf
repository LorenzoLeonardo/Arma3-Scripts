#include "commonFunctions.sqf"

private _squadLeader = _this select 0;
private _radiusDetection = _this select 1;
private _artilleryGroup = _this select 2;
private _text = toArray(str(group _squadLeader));
_text set[0,"**DELETE**"];
_text set[1,"**DELETE**"];
_text = _text - ["**DELETE**"];
private _companyName = toString(_text);
private _squadArray = units (group _squadLeader);
private _allEntities = [];
private _countEast = 0;
private _countEast =  ({(side _x) == east && alive _x} count allUnits);

while { (_countEast > 0)} do
{
	if ( alive _squadLeader ) then
	{
		_allEntities = (getPosASL _squadLeader) nearEntities [["Man", "Tank"], _radiusDetection];
	}
	else
	{
		_squadArray = _squadArray - [_squadLeader];
		_squadLeader = leader (_squadArray select 0);
	};
	_countEast =  ({(side _x) == east && alive _x} count _allEntities);
	
	//Detect at least 1 enemy, then check the number of nearby enemy entities near the detected enemies
	if(	_countEast >= 1) then
	{
		private _countEnemyTemp = 0;
		private _countEnemyMax = 0;
		private _arrayTemp = [];
		private _arrayWithMaxEnemies = [];
		//get an enemy unit that has maximum number of nearby enemy units with 300 meters.
		{
			if( (side _x) == east && alive _x) then
			{
				_arrayTemp = ((getPosASL _x) nearEntities [["Man", "Tank"], 300]);
				_countEnemyTemp = ({(side _x) == east && alive _x} count _arrayTemp);
				if ( _countEnemyMax < _countEnemyTemp ) then
				{
					_countEnemyMax = _countEnemyTemp;
					_arrayWithMaxEnemies = _arrayTemp;
				};
			};
		} foreach _allEntities;
		
		private _isReady = [_artilleryGroup] call is_artillery_available;

		if( (_countEnemyMax >= 15) && _isReady) then
		{
			private _enemyArray = [];
			//Use the selected enemyUnit as a mark to scan more enemies more than 10 to call artillery fire mission within 100 meters.
			hint format["%1 Call Artillery Barrage Now!", _companyName];
			{
				if( (side _x) == east && alive _x) then
				{
					_enemyArray set [count _enemyArray, _x];
				};
			} foreach _arrayWithMaxEnemies;

			private _xPos = 0;
			private _yPos = 0;
			private _zPos = 0;
			private _averagePosition = [];
			
			{
				_xPos = _xPos + ((getPosASL _x) select 0);
				_yPos = _yPos + ((getPosASL _x) select 1);
				_zPos = _zPos + ((getPosASL _x) select 2);
			} foreach _enemyArray;
			_enemyCount = count _enemyArray;
			_xPos = _xPos/_enemyCount;
			_yPos = _yPos/_enemyCount;
			_zPos = _zPos/_enemyCount;
			
			_averagePosition set [count _averagePosition, _xPos];
			_averagePosition set [count _averagePosition, _yPos];
			_averagePosition set [count _averagePosition, _zPos];

			[_squadLeader, _artilleryGroup, _averagePosition, 0] call call_artillery_fire_mission;
		};
	};
	_countEast =  ({(side _x) == east && alive _x} count allUnits);
	sleep 2;
};