/// @desc ?
if (trans_state == TRANS_STATE.OFF) exit;

set_draw(c_black, alpha);
draw_rectangle(0, 0, WIDTH, HEIGHT, false);

// text is always drawn relative to the center
set_draw(c_white, 1, fnt_debug, fa_center, fa_center);

draw_text(WIDTH * 0.5, HEIGHT * 0.5, text);

draw_set_alpha(1);