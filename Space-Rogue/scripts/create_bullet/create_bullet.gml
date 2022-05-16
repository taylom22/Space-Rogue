// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet(_dir, _speed, _faction, _creator, _gun){
	if(argument_count < 5){ _gun = -1;}
	
	var _xx = x + lengthdir_x(16, _dir);
	var _yy = y + lengthdir_y(16, _dir);
	
	switch(_gun){	
		case powerups.three_bullets:
			var inst = instance_create_layer(_xx,_yy, "Instances", obj_bullet);
			initialize_bullet(_dir, _speed, _faction, _creator, inst);
			
		case powerups.two_bullets: 
			audio_play_sound(snd_blip, 1, false);
			var _sep = 12;
			var inst = instance_create_layer(_xx+lengthdir_x(_sep,_dir+90),_yy+lengthdir_y(_sep,_dir+90), "Instances", obj_bullet);
			initialize_bullet(_dir, _speed, _faction, _creator, inst);
			var inst = instance_create_layer(_xx+lengthdir_x(_sep,_dir-90),_yy+lengthdir_y(_sep,_dir-90), "Instances", obj_bullet);
			initialize_bullet(_dir, _speed, _faction, _creator, inst);
			break;
			
		case powerups.four_bullets: 
			audio_play_sound(snd_blip, 1, false);
			var _sep = 7, bullet_angle;
			var i = 0; repeat(4){
				bullet_angle = _dir + (i * 90);
				var inst = instance_create_layer(_xx+lengthdir_x(_sep,bullet_angle), _yy+lengthdir_y(_sep,bullet_angle), "Instances", obj_bullet);
				initialize_bullet(bullet_angle, _speed, _faction, _creator, inst);
				i++;
			}
			break;
			
		case powerups.star_bullets: 
			audio_play_sound(snd_blip, 1, false);
			var _sep = 7, bullet_angle;
			var i = 0; repeat(8){
				bullet_angle = _dir + (i * 45);
				var inst = instance_create_layer(_xx+lengthdir_x(_sep,bullet_angle), _yy+lengthdir_y(_sep,bullet_angle), "Instances", obj_bullet);
				initialize_bullet(bullet_angle, _speed, _faction, _creator, inst);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
			audio_play_sound(snd_laser, 1, false);
			var inst = instance_create_layer(x,y, "Instances", obj_laser);
			initialize_bullet(_dir, _speed, _faction, _creator, inst);
			break;
			
		default: 
			audio_play_sound(snd_blip, 1, false);
			var inst = instance_create_layer(_xx,_yy, "Instances", obj_bullet);
			initialize_bullet(_dir, _speed, _faction, _creator, inst);
			break;
	}
	
	
}