/// @description Insert description here
// You can write your code in this editor
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

draw_set_halign(fa_center);		
		var c = c_yellow;
		draw_text_transformed_color(vw/2, vh*.2, "SPACE ROGUE", 3, 3, 0, c,c,c,c, 1);
		draw_text(vw/2, vh*.4, "Get the highest score you can!");
		
		if(global.control_method == "asteroid"){ draw_text(vw/2, vh*.5, 
@"Default Control Scheme
W|RT: Thrusters
S|LT: Stablization Thrusters
A/D|Joystick: Rotational Thrusters
");}

		if(global.control_method == "alternative"){draw_text(vw/2, vh*.5, 
@"Alternative Control Scheme
Joystick: Move
LT: Stablization Thrusters
RT: Free Rotation
");}

	if(global.control_method == "twinStick"){draw_text(vw/2, vh*.5, 
@"Twinstick Control Scheme
Left Stick: Move
Right Stick: Aim
LT: Stablization Thrusters
");}
		draw_text(vw/2, vh*.7, ">> PRESS ENTER TO START <<");
		
		draw_text(vw/2, vh*.8, "Press TAB/Share to change control scheme");
		
		draw_set_halign(fa_left);
