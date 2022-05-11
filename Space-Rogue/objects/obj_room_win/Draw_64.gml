/// @description Insert description here
// You can write your code in this editor
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

draw_set_halign(fa_center);
var c = c_lime;
draw_text_transformed_color(vw/2, vh*.3, "YOU WON!", 3, 3, 0, c,c,c,c, 1);
draw_text(vw/2, vh*.5, "YOUR SCORE WAS: " + string(score));
draw_text(vw/2, vh*.6, "YOU COMPLETED YOUR MISSION ON STARDATE: " + string(global.time_seconds));
draw_text(vw/2, vh*.7, "PRESS ENTER TO RESTART");
draw_set_halign(fa_left);
