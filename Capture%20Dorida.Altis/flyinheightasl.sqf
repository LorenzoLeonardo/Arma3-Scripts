_flying_vehicle = _this select 0;
_height = _this select 1;

_flying_vehicle setpos [((getpos _flying_vehicle) select 0),((getpos _flying_vehicle) select 1),_height];
_flying_vehicle flyInHeight _height;

while {alive _flying_vehicle} do {
	_diff = (( getposASL _flying_vehicle) select 2) - (( getPos _flying_vehicle) select 2);
	_flying_vehicle flyInHeight (_height - _diff);
	sleep 0.1;
};

hint format ["PLANE GONE"];
