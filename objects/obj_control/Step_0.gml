/// @description Build

var snap = snap_to != noone

if(snap){
	var r_dir = snap_to.direction - 180, sw = sprite_get_width(spr_belt)
	snap_x = snap_to.reverse_snap ? snap_to.x + lengthdir_x(sw, r_dir) : snap_to.x
	snap_y = snap_to.reverse_snap ? snap_to.y + lengthdir_y(sw, r_dir) : snap_to.y
	snap_dir = snap_to.direction
}else{
	snap_x = mouse_x
	snap_y = mouse_y
	snap_dir = -1
}
	
switch(mode){
	case s_belt.FIRST:
		build.end_x = snap_x
		build.end_y = snap_y
		build.end_dir = snap_dir
}