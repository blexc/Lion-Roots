/// @desc ?

// Get info for rect shape
set_draw(c_white, 1, fnt_game, fa_top, fa_left);
var _text = "Time: " + sec2hhmmss(time_sec);
width = max(width, string_width(_text));
height = string_height(_text);

// Draw Rect
set_draw(c_black, 1);
draw_rectangle(0, 0, width, height, false);

// Draw Text
set_draw(c_white, 1, fnt_game, fa_top, fa_left);
draw_text(0, 0, _text);
