// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack(){
	if (global.bulletDelay > 0){
		global.bulletDelay --;
	} else {
		create_bullet(obj_player.image_angle, global.playerBulletSpeed, faction, id, guns);
		global.bulletDelay = global.bulletDelayDefault;
	}
}
