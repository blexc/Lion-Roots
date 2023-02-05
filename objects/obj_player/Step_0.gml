/// @desc ?

var _left = 0;
var _right = 0;
var _jump = 0;

if (can_move)
{
	_left = K_LEFT;
	_right = K_RIGHT;
	_jump = K_JUMP_PRESSED;
}

if (horizontal != _right - _left)
{
	changed_direction = true;
	horizontal = _right - _left;
}
else
{
	changed_direction = false;
}

jump = _jump;
script_execute(state);
