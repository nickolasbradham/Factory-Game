/// @description Rotate
#macro ROT 15
if(position_meeting(mouse_x, mouse_y, self)){
	direction += ROT
	image_angle = direction
}