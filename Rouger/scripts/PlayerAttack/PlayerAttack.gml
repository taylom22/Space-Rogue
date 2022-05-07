// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAttack(){
	if (global.bulletDelay > 0){
		global.bulletDelay --;
	} else {
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = obj_player.image_angle;
		audio_play_sound(snd_blip, 1, false);
		global.bulletDelay = global.bulletDelayDefault;
	}
}
