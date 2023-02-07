/// @desc ?

y = oscillate(ystart, 8, 2);

if (place_meeting(x, y, obj_player))
{
	target_alpha = 0;
}
else
{
	target_alpha = 1;
}

image_alpha = lerp(image_alpha, target_alpha, 0.1);
