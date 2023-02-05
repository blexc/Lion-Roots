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
				_msg = global.msg_start[seed] + "\n" + global.msg_end[global.seeds_left];
				transition_start(room, 3, _msg);
			}
		}
	}
	else
	{
		transition_start(room, 3, "You need a seed to plant.");
	}
}
















