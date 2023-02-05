/// @desc ?

state = PlayerStateMove;

can_move = true;
changed_direction = false;

move_speed = 0;
move_speed_max = 5;
move_speed_start = 1;

jump_speed = 0;
jump_speed_max = 12;
jump_speed_start = 1;

horizontal = 0; // horizontal direction
ax = 0.2; // horizontal acceleration
ay = 0.5; // jump acceleration
vx = 0;
vy = 0;

sprite_idle = spr_lion;
sprite_walk = spr_lion; // TODO
sprite_jump = spr_lion; // TODO

image_speed = 0;
sprite_index = sprite_idle;
image_index = 0;
