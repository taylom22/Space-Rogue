/// @description Camera Setup

//Camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_player;

view_enabled = true;
view_visible[0] = true;

if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

alarm[0] = 1;
