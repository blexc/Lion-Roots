/// @desc ?

if (can_move)
{
	left = K_LEFT;
	right = K_RIGHT;
	jump_pressed = K_JUMP_PRESSED;
	jump_released = K_JUMP_RELEASED;
	jump_holding = K_JUMP_HOLDING;
}
else
{
	left = 0;
	right = 0;
	jump_pressed = 0;
	jump_released = 0;
	jump_holding = 0;
}

if (horizontal != right - left)
{
	changed_direction = true;
	horizontal = right - left;
}
else
{
	changed_direction = false;
}

script_execute(state);
