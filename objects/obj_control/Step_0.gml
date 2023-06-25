/// @description Build
switch(mode){
case M_BELT:
	if(snap_to == noone){
		snap_x = mouse_x
		snap_y = mouse_y
		snap_dir = 0
	}else{
		var r_dir = snap_to.direction - 180, sw = sprite_get_width(spr_belt)
		snap_x = snap_to.reverse_snap ? snap_to.x + lengthdir_x(sw, r_dir) : snap_to.x
		snap_y = snap_to.reverse_snap ? snap_to.y + lengthdir_y(sw, r_dir) : snap_to.y
		snap_dir = snap_to.direction
	}
	switch(state){
	case s_belt.FIRST:
		build.end_x = mouse_x
		build.end_y = mouse_y
	}
}