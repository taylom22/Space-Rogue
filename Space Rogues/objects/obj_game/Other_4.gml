if(room == rm_game){
	spawn_off_camera(obj_asteroid,40);
	
	spawn_off_camera(obj_raider,8);
	spawn_off_camera(obj_brute,3);
	spawn_off_camera(obj_hunter,5);
	
	if(!audio_is_playing(msc_song)){
		audio_play_sound(msc_song, 2, true);
	} 
	
	alarm[0] = 60;
}

if(room == rm_start){
	audio_play_sound(msc_menu, 2, true);
}
