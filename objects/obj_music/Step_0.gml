/// @desc ?

if (seeds_left != global.seeds_left)
{
	seeds_left = global.seeds_left;
	current_song = songs[seeds_left];
	
	var _offset = audio_sound_get_track_position(current_song_inst);
	stopping_song_inst = current_song_inst;
	current_song_inst = audio_play_sound(current_song, 0, true, 0, _offset);
	
	audio_sound_gain(current_song_inst, 1, 3000);
	audio_sound_gain(stopping_song_inst, 0, 3000);
}

if (stopping_song_inst != noone && audio_sound_get_gain(stopping_song_inst) == 0)
{
	audio_stop_sound(stopping_song_inst)
	stopping_song_inst = noone;
}
