/// @desc ?

songs = [
	mus_theme_0_seeds_left,
	mus_theme_1_seed_left,
	mus_theme_2_seeds_left,
	mus_theme_3_seeds_left,
	mus_theme_4_seeds_left
];
seeds_left = global.seeds_left;
current_song = songs[seeds_left];
current_song_inst = audio_play_sound(current_song, 0, true, 0);
audio_sound_gain(current_song_inst, 1, 3000);

stopping_song_inst = noone;
