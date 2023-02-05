/// @desc ?

if (instance_exists(follow))
{
	var _follow_x = follow.x;
	var _follow_y = follow.y;
	
	if (follow == obj_player)
	{
		_follow_y -= obj_player.sprite_height - 4;
	}
	else if (follow == obj_pot)
	{
		_follow_y += 4;
	}
	
	x = lerp(x, _follow_x, 0.5);
	y = lerp(y, _follow_y, 0.5);
}
