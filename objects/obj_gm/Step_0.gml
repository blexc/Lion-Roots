/// @desc ?

if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter))
{
	window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}
