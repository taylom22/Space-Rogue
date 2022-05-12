if(keyboard_check_released(vk_tab) || gamepad_button_check_released(0, gp_select)){
	switch(global.control_method){
		case "asteroid":
			 global.control_method = "alternative"; break;
		case "alternative":
			global.control_method = "twinStick"; break;
		case "twinStick":
			global.control_method = "mouseKeyboard"; break;
		case "mouseKeyboard":
			global.control_method = "asteroid"; break;
		default: 
			global.control_method = "asteroid"; break;
	}
	show_debug_message("Control Method: " + global.control_method);
}

//Window Scaling
global.resolution_w = window_get_width();
global.resolution_h = window_get_height();
global.cameraWidth = global.resolution_w;
global.cameraHeight = global.resolution_h;

view_wport[0] = global.resolution_w;
view_hport[0] = global.resolution_h;
window_set_size(global.resolution_w, global.resolution_h);
surface_resize(application_surface, global.resolution_w, global.resolution_h);
display_set_gui_size(global.resolution_w, global.resolution_h);
camera_set_view_size(view_camera[0], global.resolution_w, global.resolution_h);
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

//Pause
if room == rm_game
{
	if(keyboard_check_pressed(ord("P")) || gamepad_button_check_pressed(0, gp_start)){
	    paused = !paused;
	    if paused == false
	        {
	        instance_activate_all();
	        surface_free(paused_surf);
	                paused_surf = -1;
	        }
	    }
	if paused == true
	    {
	    alarm[0]++;
	    alarm[1]++;
	    }
}

