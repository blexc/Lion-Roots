/// @desc ?

// face direction you're moving (or moved last)
if (horizontal != 0) image_xscale = -horizontal;

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, 1);
