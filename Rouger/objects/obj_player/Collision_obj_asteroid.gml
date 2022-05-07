
//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_asteroid))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_asteroid))
	direction = -direction;
	
if(global.collision = true){
	global.collision = false;
	audio_play_sound(snd_zap, 1, false);
	
	health -= 1;

	if(health <= 0){
		lives -= 1;
	
		with(obj_game){
			alarm[1] = room_speed;
		}

		audio_play_sound(snd_die, 1, false);
		
		instance_destroy();
		
		repeat(20){
			instance_create_layer(x,y, "Instances", obj_debris);
		}
		health = 3;
	}
}


