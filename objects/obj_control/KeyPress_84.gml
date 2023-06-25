/// @description Toggle Mode
#macro M_SELECT false
#macro M_BELT true

mode = !mode
if(mode == M_BELT)
	state = s_belt.PRE_FIRST

with(obj_belt_snap)
	event_user(0)