/// @description Insert description here
// You can write your code in this editor

with(other){
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type){
	case powerups.invincible: 
		invincible = true;
		alarm[1] = 20 * room_speed;
		break;
		
	default: 
		guns = powerup_type;
		alarm[0] = 60 * room_speed;
		break;
}

