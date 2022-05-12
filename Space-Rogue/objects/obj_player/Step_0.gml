player_movement()
player_attack()

if(global.collision = false){
	global.collisionCounter += 1;
	if(global.collisionCounter>=10){
		global.collision = true;
		global.collisionCounter = 0;
	}
}

image_xscale = 1 + speed*.025;
image_yscale = 1 - speed*.025;

global.shieldTimer = alarm[1];
