// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ui(){
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
		
	draw_set_halign(fa_left);
	draw_text(20, 20, "HEALTH: ");
	draw_healthbar(100, 20, 300, 40, health, c_dkgray, c_red, c_green, direction, true, true);
	draw_text(20, 40, "SHIELD: ");
	draw_healthbar(100, 40, 300, 60, global.shieldTimer/10, c_dkgray, c_teal, c_blue, direction, true, true);
	draw_text(20, 60, "LIVES: "+string(lives));
	draw_text(20, 80, "SCORE: "+string(score));
	if(instance_exists(obj_player)){draw_text(20, 100, "SPEED: "+string(obj_player.speed*1000));}
	draw_set_halign(fa_center);
	draw_text(vw/2, 20, "Stardate: " + string(global.time_seconds));
}