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
	}
	
	if (alpha == 1 || alpha == 0)
	{
		switch (trans_state)
		{
			case TRANS_STATE.INTRO:
			{
				trans_state = TRANS_STATE.OFF;
				break;
			}
			case TRANS_STATE.GOTO:
			{
				trans_state = TRANS_STATE.INTRO;
				room_goto(room_target);
				break;
			}
		}
	}
}
