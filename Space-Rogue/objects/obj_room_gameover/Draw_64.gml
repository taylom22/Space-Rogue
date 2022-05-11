/// @description Insert description here
// You can write your code in this editor
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

draw_set_halign(fa_center);
var c = c_red;
draw_text_transformed_color(vw/2, vh*.25, "GAME OVER", 3, 3, 0, c,c,c,c, 1);
draw_text(vw/2, vh*.4, "FINAL SCORE: "+string(score));
draw_text(vw/2, vh*.5, "YOU DIED ON STARDATE: " + string(global.time_seconds));
draw_text(vw/2, vh*.7, "PRESS ENTER TO RESTART");
