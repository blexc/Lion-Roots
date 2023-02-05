/// @desc ?

if (global.collected[C.RED])
{
	
}

if (global.collected[C.BLUE])
{
	obj_platform.sprite_index = spr_platform_gooy;
}

if (global.collected[C.GREEN])
{
	
}

// create dustball
if (global.collected[C.YELLOW])
{
	instance_create_layer(room_width, room_height, "Dustball", obj_dustball);
}