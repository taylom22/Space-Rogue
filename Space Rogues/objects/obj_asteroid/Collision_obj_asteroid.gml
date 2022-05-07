//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_asteroid))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_asteroid))
	direction = -direction;
