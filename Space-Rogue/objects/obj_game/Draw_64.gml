/// @description Pause
// You can write your code in this editor
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

if paused == true
{
	if !surface_exists(paused_surf)
	    {
	    if paused_surf == -1
	        {
	        instance_deactivate_all(true);
	        }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
    } else
		{
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, vw, vh, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(vw / 2, vh / 2, "PAUSED", 2, 2, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	    draw_set_halign(fa_left);
		
		draw_set_halign(fa_left);
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "HEALTH: "+string(health));
		draw_text(20, 60, "LIVES: "+string(lives));
		draw_set_halign(fa_center);
		draw_text(vw/2, 20, "Stardate: " + string(global.time_seconds));
	    }
}
		

