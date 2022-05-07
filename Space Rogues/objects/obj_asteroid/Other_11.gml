/// @description Take Damage

score += 10;
audio_play_sound(snd_hurt, 1, false);
instance_destroy();

	
if(sprite_index == spr_asteroid_large){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid)
		new_asteroid.sprite_index = spr_asteroid_medium;}
			
	repeat(50){instance_create_layer(x,y, "Instances", obj_debris);} 
}
	
else if (sprite_index == spr_asteroid_medium){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid)
		new_asteroid.sprite_index = spr_asteroid_small;}
			
	repeat(20){instance_create_layer(x,y, "Instances", obj_debris);}
}
	
else if(sprite_index == spr_asteroid_small){
	repeat(10){instance_create_layer(x,y, "Instances", obj_debris);} 
}
