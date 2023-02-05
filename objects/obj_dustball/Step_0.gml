/// @desc ?

if (instance_exists(follow))
{
	xfollow = follow.x;
	yfollow = follow.y - follow.sprite_height / 2;

	x = approach(x, xfollow, strength);
	y = approach(y, yfollow, strength);
}

image_angle++;
