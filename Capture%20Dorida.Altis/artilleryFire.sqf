_gunArray = _this select 0;
_targetString = _this select 1;
_rounds = _this select 2;
_caller = _this select 3;
_leaderOfGun = leader (crew (_gunArray select 0) select 0);

_caller sideRadio "RadioArtillerySupportAlpha";
sleep 5;
[west,"Base"] sideRadio "RadioArtillerySupportReplyAlpha";

hint format["Artillery firing now!"];
{
	_ammo = getArtilleryAmmo [_x] select 0; 
	_x doArtilleryFire[ getMarkerPos _targetString, _ammo, _rounds];
	sleep 1;
} foreach _gunArray;

hint format["Artillery rounds complete!"];
_leaderOfGun sideRadio "RadioArtilleryRoundsComplete";