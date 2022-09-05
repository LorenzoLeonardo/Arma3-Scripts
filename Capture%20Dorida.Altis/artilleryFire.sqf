_gunArray = _this select 0;
_targetString = _this select 1;
_rounds = _this select 2;

(leader (group player)) sideChat format["Papa bear, we need artillery assistance over!"];
sleep 3;
[West, "HQ"] sideChat format["Copy that %1. Artillery barrage is coming!", (leader (group player))];
hint format["Artillery firing out!"];
{
	_ammo = getArtilleryAmmo [_x] select 0; 
	_x doArtilleryFire[ getMarkerPos _targetString, _ammo, _rounds];
	sleep 1;
} foreach _gunArray;