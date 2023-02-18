// Setup a trigger covers the playing area, set up Global variable "check" which is false when "On Deactivation" set "check" to true and
// execute this script passing in a time variable of 10 secs right now.  Display will be in the top right corner under your
// ammo stuffs.  Will clear out when back in the zone

if (check) then {

private "_time";
_time = _this select 0;

while {_time > 0} do {

	_time = _time - 1;
	hintSilent format["GET BACK IN THE FIGHTING AREA \nTime Left: \n %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];	
	sleep 1;
	if (!check) then {
		hintSilent "";
		break;
	}
	
};

if (check) then {

	player setDamage .25;
	sleep 1;
	player setDamage .50;
	sleep 1;
	player setDamage .75;
	sleep 1;
	player setDamage 1;
	hint "Dumb ass";

};


};








