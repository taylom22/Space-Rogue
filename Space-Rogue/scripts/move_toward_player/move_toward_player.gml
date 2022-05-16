// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_toward_player(attack_player){
	if(!instance_exists(obj_player)) exit;
	
	//Turn to look at player
	var new_angle = point_direction(x,y, obj_player.x, obj_player.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	direction = image_angle;
	
	if(attack_player = true){
		if(point_distance(x, y, obj_player.x, obj_player.y) < 150){
					speed -= 0.05;
		}
		enemy_attack();
	}
	
}
