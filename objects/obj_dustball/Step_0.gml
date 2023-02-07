/// @desc ?

if (game_is_playing())
{
	if (instance_exists(follow))
	{
		xfollow = follow.x;
		yfollow = follow.y - follow.sprite_height * 0.25;

		x = approach(x, xfollow, move_speed);
		y = approach(y, yfollow, move_speed);
	}

	image_angle++;
}
