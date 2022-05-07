// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerProperties(){
	//Initialization
	global.collision = true;
	global.collisionCounter = 0;
	
	//Movement
	global.maxSpeed = 15;
	
	//Weapons
	global.bulletDelayDefault = room_speed/5;
	global.bulletDelay = room_speed/5;
}