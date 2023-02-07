function player_is_grounded()
{
	with (obj_player)
	{
		return place_meeting(x, y + 1, par_solid);
	}
	return noone;
}

function player_on_goo()
{
	with (obj_player)
	{
		var _plat_inst = instance_place(x, y + 1, obj_platform);
		if (instance_exists(_plat_inst))
		{
			return _plat_inst.sprite_index == spr_platform_gooy;
		}
	}
	return false;
}

function PlayerStateMove()
{
	with (obj_player)
	{
		// move left right
		if (horizontal != 0 || changed_direction)
		{
			move_speed += ax;
			
			var _max = move_speed_max;
			if (player_on_goo()) _max = move_speed_max_gooy;
			
			move_speed = min(move_speed, _max);
		}
		else
		{
			move_speed = move_speed_start;
		}
		vx = horizontal * move_speed;
		
		// jump and interact
		if (player_is_grounded())	jump_buffer = jump_buffer_start;
		else						jump_buffer = max(0, jump_buffer - 1);
		
		if (jump_pressed && jump_buffer > 0)
		{
			var _seed_inst = instance_place(x, y, par_seed);
			var _pot_inst = instance_place(x, y + 5, obj_pot);
			if (instance_exists(_pot_inst))
			{
				// plant seed
				state = PlayerStatePlantSeed;
			}
			else if (instance_exists(_seed_inst) && seed_on_head == noone)
			{
				// pickup seed
				seed_on_head = _seed_inst;
				seed_on_head.follow = obj_player;
			}
			else
			{
				// jump
				vy -= jump_speed;
			}
		}
		
		// gravity
		var _gravity_final = GRAVITY;
		if (vy > 0) _gravity_final *= 0.5; // less gravity when falling
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

function PlayerStatePlantSeed()
{
	can_move = false;
	var _msg = "";
	var _fade_out_time = 3;
	var _trans_buffer = 3;
	var _room_goto = room;
	
	if (seed_on_head != noone)
	{
		with (seed_on_head)
		{
			follow = obj_pot;
		
			if (obj_transition.trans_state == TRANS_STATE.OFF &&
				place_meeting(x, y, obj_pot))
			{
				global.collected[seed] = true;
				global.seeds_left--;
				_msg = global.msg_start[seed] + "\n\n" + global.msg_end[global.seeds_left];
				if (global.seeds_left == 0) _room_goto = rm_menu;
				transition_start(_room_goto, _fade_out_time, _msg, _trans_buffer);
			}
		}
	}
	else
	{
		transition_start(room, _fade_out_time, "You need a seed to plant.", _trans_buffer);
	}
}

function PlayerStateDie()
{
	can_move = false;
	if (obj_transition.trans_state == TRANS_STATE.OFF)
	{
		transition_start(room, 1, "You died.", 1);
	}
	image_alpha -= 0.05;
}














