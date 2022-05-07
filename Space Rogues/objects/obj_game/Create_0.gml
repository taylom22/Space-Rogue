score = 0;
lives = 3;
health = 3;

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
