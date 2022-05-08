// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialize_bullet(_dir, _speed, _faction, _creator, inst){
	with(inst){
		direction = _dir;
		speed = _speed;
		faction = _faction;
		creator = _creator;
		
		if(faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.red) image_blend = c_red;
	}
}