function transition_start(_room_target = room, _fade_out_time_sec = 3, _msg = "", _trans_buffer = 2)
{
	with (obj_transition)
	{
		trans_state = TRANS_STATE.GOTO;
		room_target = _room_target;
		fade_out_time_sec = _fade_out_time_sec;
		text = _msg;
		trans_buffer = _trans_buffer;
	}
}