// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	var haxis = gamepad_axis_value(0, gp_axislh);
	var rightTrigger = gamepad_button_value(0, gp_shoulderrb)
	var leftTrigger = gamepad_button_value(0, gp_shoulderlb)
	
	//move left
	if(keyboard_check(ord("A")) || (haxis < -.8)){
	image_angle += 5;
	}

	//move right
	if(keyboard_check(ord("D")) || (haxis > 0.8)){
		image_angle -= 5;
	}

	//move forward
	if(keyboard_check(ord("W")) || (rightTrigger > 0)){
		if(speed <= 5){motion_add(image_angle, 0.5);}
		else{if(speed > 5 && speed <= global.maxSpeed){motion_add(image_angle, global.maxSpeed*.02);}
		}
		if(speed > global.maxSpeed){speed = global.maxSpeed;}
		
		//audio_play_sound(snd_engine, 1, false);    -replace with better sound
	}
	
	//brake
	if(keyboard_check(ord("S")) || (leftTrigger > 0)){
		speed -= speed * .025;
	}
	
	move_wrap(true, true, sprite_width/2);
}