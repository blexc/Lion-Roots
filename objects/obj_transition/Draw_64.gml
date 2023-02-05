/// @desc ?

if (trans_state != TRANS_STATE.OFF)
{
	set_draw(c_black, alpha);
	draw_rectangle(0, 0, WIDTH, HEIGHT, false);

	if (trans_state == TRANS_STATE.GOTO)
	{
		set_draw(c_white, 1, fnt_game, fa_center, fa_center);
		draw_text_ext(WIDTH * 0.5, HEIGHT * 0.5, text, font_get_size(fnt_game) + 8, WIDTH * 0.8);
	}

	draw_set_alpha(1);
}
