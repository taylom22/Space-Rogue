/// @description 
pad = 100;
if (point_in_rectangle(x, y, global.cameraX-pad, global.cameraY-pad, global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad)) {
	create_debris(id, faction, 10, c_red);
	score += pointValue;
}

