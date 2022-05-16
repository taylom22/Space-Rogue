// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_attack(){
	if(!instance_exists(obj_player)) exit;
	
	if(point_distance(x,y, obj_player.x, obj_player.y) < sightRange){
		bulletCounter++;
		if(bulletCounter >= fireSpeed){
			create_bullet(image_angle, bulletSpeed, faction, id);
			bulletCounter = 0;
		}
	}

}