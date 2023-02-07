/// @desc ?

if (keyboard_check_pressed(ord("C")))
{
	if (instance_exists(obj_lazer)) instance_destroy(obj_lazer);
	obj_player.x = obj_old_man.x;
	obj_player.y = obj_old_man.y;
}

if (keyboard_check_pressed(ord("1")))
{
	global.collected[0] = true;
	global.seeds_left--;
	transition_start(room, 0.1, "", 1);
}

if (keyboard_check_pressed(ord("2")))
{
	global.collected[1] = true;
	global.seeds_left--;
	transition_start(room, 0.1, "", 1);
}

if (keyboard_check_pressed(ord("3")))
{
	global.collected[2] = true;
	global.seeds_left--;
	transition_start(room, 0.1, "", 1);
}

if (keyboard_check_pressed(ord("4")))
{
	global.collected[3] = true;
	global.seeds_left--;
	transition_start(room, 0.1, "", 1);
}