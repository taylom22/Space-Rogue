switch(room){
	case rm_game: 
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "HEALTH: "+string(health));
		draw_text(20, 60, "LIVES: "+string(lives));
		if(instance_exists(obj_player)){draw_text(20, 80, "SPEED: "+string(obj_player.speed*1000));}
		break;
	
	case rm_start:
		draw_set_halign(fa_center);		
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 300, "SPACE ROGUES", 3, 3, 0, c,c,c,c, 1);
		draw_text(room_width/2, 450, 
@"Score 1,000 points to win!

W|RT: Thrusters
S|LT: Stablization Thrusters
A/D|Joystick: Rotational Thrusters

>> PRESS ENTER TO START <<
");
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(room_width/2, 500, "YOU WON!", 3, 3, 0, c,c,c,c, 1);
		draw_text(room_width/2, 600, "PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width/2, 250, "GAME OVER", 3, 3, 0, c,c,c,c, 1);
		draw_text(room_width/2, 500, "FINAL SCORE: "+string(score));
		draw_text(room_width/2, 600, "PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
}
