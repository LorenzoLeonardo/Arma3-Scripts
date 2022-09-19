private _groupName = _this select 0;
private _arrayWestUnits = units blufor;
private _notFound = false;
{
	private _group = group _x;
	if ( groupId _group == _groupName) then {
		[player] join _group;
		_notFound = true;
		break;
	}
} foreach _arrayWestUnits;

if (!_notFound) then {
	[player] join grpNull;
	(group player) setGroupId ["Echo"];
};