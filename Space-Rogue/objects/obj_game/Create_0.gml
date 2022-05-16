score = 0;
lives = 1;
health = 100;

global.control_method = "asteroid";
show_debug_message("Control Method: "+global.control_method);
global.deadzone = 0.2;

global.time_seconds = 0;

draw_set_font(fnt_text);

randomize();

enum factions {
	neutral, 
	ally,
	red
}

enum powerups {
	two_bullets, 
	three_bullets, 
	four_bullets, 
	star_bullets, 
	laser_bullets, 
	invincible, 
	healthpickup
}

//Window Scaling
global.resolution_w = window_get_width();
global.resolution_h = window_get_height();
global.cameraWidth = global.resolution_w;
global.cameraHeight = global.resolution_h;

//Pause
paused = false;
paused_surf = -1;
