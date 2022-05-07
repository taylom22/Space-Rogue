/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_die, 1, false);
		
repeat(20){
			instance_create_layer(x,y, "Instances", obj_debris);
		}
health = global.playerDefaultHealth;
