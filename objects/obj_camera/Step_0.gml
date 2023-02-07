
if (instance_exists(follow))
{
	xfollow = follow.x + offset_x;
	yfollow = follow.y + offset_y;

	x = lerp(x, xfollow, strength);
	y = lerp(y, yfollow, strength);
	
	x = clamp(x, view_w_half, room_width - view_w_half);
	y = clamp(y, view_h_half, room_height - view_h_half);

	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}
