// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	var haxis = gamepad_axis_value(0, gp_axislh);
	var vaxis = gamepad_axis_value(0, gp_axislv);
	var haxisr = gamepad_axis_value(0, gp_axisrh);
	var vaxisr = gamepad_axis_value(0, gp_axisrv);
	var rightTrigger = gamepad_button_value(0, gp_shoulderrb)
	var leftTrigger = gamepad_button_value(0, gp_shoulderlb)
	
	switch(global.control_method){
		case "asteroid":
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
			break;
			
		case "alternative":
			var_angle= point_direction(0,0,haxis,vaxis);
			if(keyboard_check(ord("Q")) || (rightTrigger > 0)){
				image_angle = var_angle;
			} else {
				if(haxis > global.deadzone || haxis < -global.deadzone && vaxis > global.deadzone || vaxis < -global.deadzone) motion_add(var_angle, 0.5);
				image_angle = var_angle;
				if(speed > global.maxSpeed){speed = global.maxSpeed;}
			}
	
			//brake
			if(keyboard_check(ord("S")) || (leftTrigger > 0)){
				speed -= speed * .025;
			}
			break;
			
		case "twinStick":
			var_angle= point_direction(0,0,haxis,vaxis);
			var_angle_r= point_direction(0,0,haxisr,vaxisr);
			
			//Move
			if(haxis > global.deadzone || haxis < -global.deadzone && vaxis > global.deadzone || vaxis < -global.deadzone) motion_add(var_angle, 0.5);
				if(speed > global.maxSpeed){speed = global.maxSpeed;}
			
			//Aim
			if((haxisr > global.deadzone || haxisr < -global.deadzone) || (vaxisr > global.deadzone || vaxisr < -global.deadzone)){
				image_angle = var_angle_r;
				} else {image_angle = lerp(image_angle, var_angle, 0.1);}
			
			//brake
			if(keyboard_check(ord("S")) || (leftTrigger > 0)){
				speed -= speed * .025;
			}
			break;
			
		case "mouseKeyboard":
			
			//Move
			left = point_direction(x, y, x-5, y);
			right = point_direction(x, y, x+5, y);
			up = point_direction(x, y, x, y-5);
			down = point_direction(x, y, x, y+5);
			
			if(keyboard_check(ord("A"))) motion_add(left, 0.5);
			if(keyboard_check(ord("W"))) motion_add(up, 0.5);
			if(keyboard_check(ord("S"))) motion_add(down, 0.5);
			if(keyboard_check(ord("D"))) motion_add(right, 0.5);
			
			if(speed > global.maxSpeed) speed = global.maxSpeed;
			if(keyboard_check(ord("S"))) speed -= speed * .025;
			
			//Aim
			image_angle = point_direction(x, y, mouse_x, mouse_y);
			
			//brake
			if(keyboard_check(vk_space)){
				speed -= speed * .025;
			}
			break;
	}	
	//if outside room
	move_wrap(true, true, sprite_width/2);
}