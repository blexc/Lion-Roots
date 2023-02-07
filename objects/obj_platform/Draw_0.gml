/// @desc ?

draw_self();

// two layers of shadow below the platforms
var _shadow_x1 = x;
var _shadow_y1 = y + sprite_height;
var _shadow_x2 = x + sprite_width - 1;
var _shadow_y2 = y + sprite_height * 1.5;
var _shadow_y2_smaller = y + sprite_height;
draw_set_color(c_black);
draw_set_alpha(0.25);
draw_rectangle(_shadow_x1, _shadow_y1, _shadow_x2, _shadow_y2_smaller, false);
draw_rectangle(_shadow_x1, _shadow_y1, _shadow_x2, _shadow_y2, false);

draw_set_alpha(1);