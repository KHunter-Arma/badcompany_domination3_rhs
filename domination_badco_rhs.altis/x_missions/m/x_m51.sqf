// by Xeno
//#define __DEBUG__
#define THIS_FILE "x_m51.sqf"
#include "..\..\x_setup.sqf"

d_x_sm_pos = [[9255.93,8234.52,0]]; // index: 51,   Shot down chopper
d_x_sm_type = "evac";

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1803";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_812";
};

if (call d_fnc_checkSHC) then {
	[d_x_sm_pos, time + ((15 * 60) + random 60)] spawn d_fnc_sideevac;
};