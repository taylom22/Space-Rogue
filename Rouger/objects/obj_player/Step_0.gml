PlayerMovement()
PlayerAttack()

if(global.collision = false){
	global.collisionCounter += 1;
	if(global.collisionCounter>=10){
		global.collision = true;
		global.collisionCounter = 0;
	}
}
