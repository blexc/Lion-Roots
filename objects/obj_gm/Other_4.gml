/// @desc ?

if (room == rm_level)
{
	if (global.collected[C.RED])
	{
		instance_create_layer(room_width, room_height, "Lazer", obj_lazer);
	}

	if (global.collected[C.BLUE])
	{
		// about half platforms will be gooy
		var _num_plats = instance_number(obj_platform);
		for (var i = 0; i < _num_plats; i++)
		{
			var _plat_inst = instance_find(obj_platform, i);
			_plat_inst.sprite_index = choose(spr_platform, spr_platform_gooy);
		}
	}

	// green handled in spike object itself

	// create dustball
	if (global.collected[C.YELLOW])
	{
		instance_create_layer(room_width, room_height, "Dustball", obj_dustball);
		if (global.seeds_left == 1)
			instance_create_layer(room_width, room_height, "Dustball", obj_dustball_2);
	}
}
