/// @desc ?

if (game_is_playing())
{
	time = max(0, time + delta_time);
	time_sec = time / 1000000;
}
