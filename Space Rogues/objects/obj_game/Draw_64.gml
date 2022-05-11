switch(room){
	case rm_game: 
		var vw = camera_get_view_width(view_camera[0]) / 2;
		var vh = camera_get_view_height(view_camera[0]) / 2;
		
		draw_set_halign(fa_left);
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "HEALTH: "+string(health));
		draw_text(20, 60, "LIVES: "+string(lives));
		if(instance_exists(obj_player)){draw_text(20, 80, "SPEED: "+string(obj_player.speed*1000));}
		draw_set_halign(fa_center);
		draw_text(vw, 20, "Stardate: " + string(time_seconds));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);		
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 300, "SPACE ROGUES", 3, 3, 0, c,c,c,c, 1);
		if(global.control_method == "asteroid"){ draw_text(room_width/2, 450, 
@"Get the highest score you can!

Default Control Scheme
W|RT: Thrusters
S|LT: Stablization Thrusters
A/D|Joystick: Rotational Thrusters

>> PRESS ENTER TO START <<
");}

		if(global.control_method == "alternative"){draw_text(room_width/2, 450, 
@"Get the highest score you can!

Alternative Control Scheme
Joystick: Move
LT: Stablization Thrusters
RT: Free Rotation

>> PRESS ENTER TO START <<
");}

	if(global.control_method == "twinStick"){draw_text(room_width/2, 450, 
@"Get the highest score you can!

Twinstick Control Scheme
Left Stick: Move
Right Stick: Aim
LT: Stablization Thrusters

>> PRESS ENTER TO START <<
");}

		draw_text(room_width/2, 800, "Press TAB/Share to change control scheme");
		
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
		draw_text(room_width/2, 600, "YOU DIED ON STARDATE: " + string(time_seconds));
		draw_text(room_width/2, 800, "PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
}
