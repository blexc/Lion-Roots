/// @desc ?

if (obj_transition.trans_state == TRANS_STATE.OFF)
{
	var _text_x = WIDTH  * 0.5;
	var _text_y = HEIGHT * 0.75;

	var _x1 = _text_x - str_width_half;
	var _y1 = _text_y - str_height_half;
	var _x2 = _text_x + str_width_half;
	var _y2 = _text_y + str_height_half;

	// Draw Rect
	set_draw(c_black, alpha);
	draw_rectangle(_x1, _y1, _x2, _y2, false);

	// Draw Text
	set_draw(c_white, alpha, fnt_game, fa_center, fa_center);
	draw_text(_text_x, _text_y, text);
}
