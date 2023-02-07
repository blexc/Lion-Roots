/// @desc ?

if (game_is_playing())
{
	y += move_speed;
	
	if (place_meeting(x, y, par_solid))
	{
		move_speed *= -1;
	}
}
