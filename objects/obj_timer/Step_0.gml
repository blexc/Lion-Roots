/// @desc ?

if (instance_exists(obj_player) &&
	obj_transition.trans_state == TRANS_STATE.OFF)
{
	time = max(0, time + delta_time);
}

time_sec = time / 1000000;