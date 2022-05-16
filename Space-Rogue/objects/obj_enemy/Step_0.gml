/// @description Insert description here
// You can write your code in this editor

if(x > global.cameraX + global.cameraWidth || x < global.cameraX - global.cameraWidth || y > global.cameraY + global.cameraHeight || y < global.cameraY - global.cameraHeight){
	instance_destroy();
}
