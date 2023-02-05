#macro WIDTH 512
#macro HEIGHT 512
#macro HORIZON 64
#macro COL_WIDTH 64
#macro ROW_HEIGHT 32

#macro GRAVITY 0.5

#macro CAM view_camera[0]
#macro CAM_X camera_get_view_x(CAM)
#macro CAM_Y camera_get_view_y(CAM)

#macro K_LEFT keyboard_check(vk_left) || keyboard_check(ord("A"))
#macro K_RIGHT keyboard_check(vk_right) || keyboard_check(ord("D"))
#macro K_JUMP_HOLDING keyboard_check(vk_space)
#macro K_JUMP_PRESSED keyboard_check_pressed(vk_space)
#macro K_JUMP_RELEASED keyboard_check_released(vk_space)

// map legend
#macro L_PLATFORM "X"

enum TRANS_STATE
{
	OFF,
	GOTO,
	INTRO,
}

// red, blue, green, yellow
global.collected = [ false, false, false, false ];
global.seeds_left = 4;
global.msg_start = [
	"You got the red one... wonderful. Be careful of lazors.",
	"You got the blue one... great. Mind the slime-y platforms.",
	"You got the green one... good. Don't touch the spikes.",
	"You got the yellow one... amazing! Avoid the dustballs.",
]
global.msg_end = [
	"You fool! Now I have the power of the God Tree! MUAHAHAHAHAHA!!",
	"Just one more!",
	"Two More. Go.",
	"Grab three more seeds for me, and you will beat the game!",
];