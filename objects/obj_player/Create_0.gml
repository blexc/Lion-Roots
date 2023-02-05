/// @desc ?

state = PlayerStateMove;

// controls
left = 0;
right = 0;
jump_pressed = 0;
jump_released = 0;
jump_holding = 0;

can_move = true;
changed_direction = false;

move_speed = 0;
move_speed_max = 5;
move_speed_start = 1;

jump_speed = 12;
jump_buffer = 0;
jump_buffer_start = 5;

horizontal = 0; // horizontal direction
ax = 0.5; // horizontal acceleration
vx = 0;
vy = 0;

sprite_idle = spr_lion;
sprite_walk = spr_lion; // TODO
sprite_jump = spr_lion; // TODO

image_speed = 0;
sprite_index = sprite_idle;
image_index = 0;
