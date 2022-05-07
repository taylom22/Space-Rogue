/// @description Take Damage

score += 10;
audio_play_sound(snd_hurt, 1, false);
instance_destroy();

	
if(sprite_index == spr_asteroid_large){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid)
		new_asteroid.sprite_index = spr_asteroid_medium;}
			
	create_debris(id, faction, 50, c_white);
}
	
else if (sprite_index == spr_asteroid_medium){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid)
		new_asteroid.sprite_index = spr_asteroid_small;}
			
	create_debris(id, faction, 20, c_white);
}
	
else if(sprite_index == spr_asteroid_small){
	create_debris(id, faction, 10, c_white);
}
