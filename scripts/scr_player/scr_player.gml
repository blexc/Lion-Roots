
function PlayerStateMove()
{
	with (obj_player)
	{
		vx = horizontal * move_speed;
		
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