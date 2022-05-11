/// @description Insert description here
// You can write your code in this editor

room_width = global.resolution_w;
room_height = global.resolution_h;

if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start)){
	room_goto(rm_game);
}
