score = 0;
lives = 3;
health = 3;

global.control_method = "asteroid";
show_debug_message("Control Method: "+global.control_method);
global.deadzone = 0.2;

time_seconds = 0;

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
	invincible
}
