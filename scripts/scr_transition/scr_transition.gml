function transition_start(_room_target = room, _fade_out_time_sec = 0.3, _msg = "")
{
	with (obj_transition)
	{
		trans_state = TRANS_STATE.GOTO;
		room_target = _room_target;
		fade_out_time_sec = _fade_out_time_sec;
		text = _msg;
	}
}