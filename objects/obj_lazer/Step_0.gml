/// @desc ?

if (game_is_playing())
{
	y = CAM_Y - 32;

	if (warning_time > 0)
	{
		// show lazer above player
		x = obj_player.x;
		image_alpha = lerp(image_alpha, 1, 0.1);
		warning_time--;
	}
	else
	{
		// show lazer down to the bottom of the camera
		image_yscale += shoot_speed;
		if (bbox_bottom > CAM_Y + CAM_HEIGHT)
		{
			image_alpha = 0;
			warning_time = warning_time_start;
			image_yscale = image_y_scale_start;
		}
	}
}
