//Check if obj is member of our faction
if(other.faction == faction) exit;

//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_asteroid))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_asteroid))
	direction = -direction;
	
//Take Damage
event_perform(ev_other, ev_user1);
