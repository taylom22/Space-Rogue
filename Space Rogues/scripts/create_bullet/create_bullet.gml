// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet(_dir, _speed, _faction, _creator){
	var _xx = x + lengthdir_x(16, _dir);
	var _yy = y + lengthdir_y(16, _dir);
	var inst = instance_create_layer(_xx,_yy, "Instances", obj_bullet);
	audio_play_sound(snd_blip, 1, false);
	
	with(inst){
		direction = _dir;
		speed = _speed;
		faction = _faction;
		creator = _creator;
		
		if(faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
	}
}