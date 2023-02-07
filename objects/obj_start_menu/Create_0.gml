/// @desc ?

if (global.seeds_left == 0)
{
	layer_background_sprite(layer_background_get_id("Background"),
		spr_title_screen_end);
}
else
{
	layer_background_sprite(layer_background_get_id("Background"),
		spr_title_screen_start);
}

// Get info for rect shape
set_draw(c_white, 1, fnt_game, fa_top, fa_left);
text = "~~ Press Space to Start! ~~";
str_width_half = string_width(text) * 0.5;
str_height_half = string_height(text) * 0.5;

alpha = 1;
period = 2;
