/// @description Insert description here
// You can write your code in this editor

global.time_seconds = 0;
spawn_off_camera(obj_asteroid,75);
	
spawn_off_camera(obj_raider,30);
spawn_off_camera(obj_brute,15);
spawn_off_camera(obj_hunter,10);
	
if(!audio_is_playing(msc_song)){
	audio_play_sound(msc_song, 2, true);
} 
	
alarm[0] = 30;
