/// @description Take Damage
if(invincible) exit;

if(global.collision = true){
	global.collision = false;
	audio_play_sound(snd_zap, 1, false);
	create_debris(id, faction, 5, color);
	
	health -= 10;

	if(health <= 0){
		lives -= 1;
	
		with(obj_game){
			alarm[1] = room_speed;
		}
		
		instance_destroy();
	}
	
	with(other) event_perform(ev_other, ev_user1);
}

