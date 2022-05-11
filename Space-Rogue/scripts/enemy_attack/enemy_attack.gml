// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_attack(){
	//If player exists
	if(!instance_exists(obj_player)) exit;

	//If player is inside range
	if(point_distance(x,y, obj_player.x, obj_player.y) < sightRange){
		//Turn to look at player
		var new_angle = point_direction(x,y, obj_player.x, obj_player.y);
		new_angle = image_angle - angle_difference(image_angle, new_angle);
		image_angle = lerp(image_angle, new_angle, 0.1);
		if(chasePlayer = true){
			direction = image_angle;
			if(point_distance(x, y, obj_player.x, obj_player.y) < 150){
				speed -= 0.05;
			}else{if(attackPlayer = true){speed = defaultSpeed;}}
		
		//Fire Bullet
		bulletCounter++;
		if(bulletCounter >= fireSpeed){
			create_bullet(image_angle, bulletSpeed, faction, id);
			bulletCounter = 0;
		}
	}else{
		image_angle = lerp(image_angle, direction, turnSpeed);
		}
	}
}