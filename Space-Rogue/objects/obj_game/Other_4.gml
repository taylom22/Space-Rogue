if(room == rm_game){
	time_seconds = 0;
	spawn_off_camera(obj_asteroid,75);
	
	spawn_off_camera(obj_raider,30);
	spawn_off_camera(obj_brute,15);
	spawn_off_camera(obj_hunter,10);
	
	if(!audio_is_playing(msc_song)){
		audio_play_sound(msc_song, 2, true);
	} 
	
	alarm[0] = 30;
}

if(room == rm_start){
	audio_play_sound(msc_menu, 2, true);
}
