/// @description Insert description here
// You can write your code in this editor

event_inherited();

if(initialized = false){
	//Control
	global.collision = true;
	global.collisionCounter = 0;
	global.playerDefaultHealth = 3;
	
	//Movement
	global.maxSpeed = 15;
	
	//Weapons
	global.bulletDelayDefault = room_speed/5;
	global.bulletDelay = room_speed/5;
	global.playerBulletSpeed = 20 + obj_player.speed;
	initialized = true;
	
	guns = -1;
	invincible = false;
}