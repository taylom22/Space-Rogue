/// @description Insert description here
// You can write your code in this editor

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
		
draw_set_halign(fa_left);
draw_text(20, 20, "SCORE: "+string(score));
draw_text(20, 40, "HEALTH: "+string(health));
draw_text(20, 60, "LIVES: "+string(lives));
if(instance_exists(obj_player)){draw_text(20, 80, "SPEED: "+string(obj_player.speed*1000));}
if(global.shieldTimer > 0) draw_text(20, 100, "SHIELD ENERGY: "+string(global.shieldTimer));
draw_set_halign(fa_center);
draw_text(vw/2, 20, "Stardate: " + string(global.time_seconds));
