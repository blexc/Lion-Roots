/// @desc ?

if (K_JUMP_PRESSED)
{
	keyboard_clear(vk_space);
	transition_start(rm_level, 1, "Bring the seeds to the pot!", 1);
	restart_game_stats();
}

alpha = oscillate(0.5, 0.5, period);
