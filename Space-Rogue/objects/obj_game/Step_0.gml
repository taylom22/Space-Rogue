if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start)){
	switch(room){
		case rm_start:
			room_goto(rm_game)
			break;
			
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(keyboard_check_released(vk_tab) || gamepad_button_check_released(0, gp_select)){
	switch(global.control_method){
		case "asteroid":
			 global.control_method = "alternative"; break;
		case "alternative":
			global.control_method = "twinStick"; break;
		case "twinStick":
			global.control_method = "asteroid"; break;
		default: 
			global.control_method = "asteroid"; break;
	}
	show_debug_message("Control Method: " + global.control_method);
}

if(room == rm_game){
	/*if(score >= 1000){
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}*/
	time_seconds += (delta_time*0.00000001)*room_speed;
	if(lives <=0){
		room_goto(rm_gameover);
		audio_play_sound(snd_lose, 1, false);
	}
}


