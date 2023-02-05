function player_is_grounded()
{
	with (obj_player)
	{
		return place_meeting(x, y + 1, par_solid);
	}
	return noone;
}

function PlayerStateMove()
{
	with (obj_player)
	{
		// move left right
		if (horizontal != 0 || changed_direction)
		{
			move_speed += ax;
			move_speed = min(move_speed, move_speed_max);
		}
		else
		{
			move_speed = move_speed_start;
		}
		
		vx = horizontal * move_speed;
		
		// jump
		if (jump && player_is_grounded())
		{
			vy -= jump_speed;
		}
		
		// gravity
		vy += GRAVITY;
		
		// check for x collision
		if (place_meeting(x + vx, y, par_solid))
		{
			while (!place_meeting(x + sign(vx), y, par_solid)) x += sign(vx);
			vx = 0;
		}
		x += vx;
		
		// check for y collision
		if (place_meeting(x, y + vy, par_solid))
		{
			while (!place_meeting(x, y + sign(vy), par_solid)) y += sign(vy);
			vy = 0;
		}
		y += vy;
	}
}