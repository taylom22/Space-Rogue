//Check if obj is member of our faction
if(other.faction == faction) exit;
else if(invincible){
	with(other){event_perform(ev_other, ev_user1);}exit;}

//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_entity))
	direction = -direction + 180;

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_entity))
	direction = -direction;
	
//Take Damage
event_perform(ev_other, ev_user1);
