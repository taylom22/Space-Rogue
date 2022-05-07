/// @description Take Damage
if(global.collision = true){
	global.collision = false;
	audio_play_sound(snd_zap, 1, false);
	
	health -= 1;

	if(health <= 0){
		lives -= 1;
	
		with(obj_game){
			alarm[1] = room_speed;
		}
		
		instance_destroy();
	}
}

