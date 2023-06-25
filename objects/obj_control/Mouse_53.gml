/// @description Click
switch(mode){
case M_BELT:
	switch(state){
	case s_belt.PRE_FIRST:
		build = instance_create_layer(snap_x, snap_y,"Belts",obj_belt, {direction : snap_dir})
		state = s_belt.FIRST
	}
}