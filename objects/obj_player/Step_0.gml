/// @desc ?

var _up = 0;
var _down = 0;
var _left = 0;
var _right = 0;
var _interact = 0;

if (can_move)
{
	_left = K_LEFT;
	_right = K_RIGHT;
	_jump = K_JUMP;
}

horizontal = _right - _left;
script_execute(state);
