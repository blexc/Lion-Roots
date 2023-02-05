/// @desc ?

if (trans_state != TRANS_STATE.OFF)
{
	if (trans_state == TRANS_STATE.INTRO)
	{
		var _fade_in_step = 1 / sec2frame(fade_in_time_sec);
		alpha = approach(alpha, 0, _fade_in_step); // fade in
	}
	else // (trans_state == TRANS_STATE.GOTO)
	{
		var _fade_out_step = 1 / sec2frame(fade_out_time_sec);
		alpha = approach(alpha, 1, _fade_out_step); // fade out
		
		// skip fade out
		if (K_JUMP_PRESSED)
		{
			alpha = 1;
			alarm[0] = 1;
		}
	}
	
	if (alpha == 1 || alpha == 0)
	{
		if (alarm[0] == -1) alarm[0] = sec2frame(trans_buffer);
	}
}
