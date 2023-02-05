/// @desc ?

if (place_meeting(x, y, obj_player))
{
	obj_camera.offset_y = HEIGHT * -0.3;
}
else
{
	obj_camera.offset_y = 0;
}