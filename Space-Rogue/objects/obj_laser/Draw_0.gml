var len = 2500;

if(instance_exists(creator)){
	_x = creator.x + lengthdir_x(16, direction);
	_y = creator.y + lengthdir_y(16, direction);

	//Draw Line
	draw_line_width_color(_x,_y, 
		_x+lengthdir_x(len, direction),
		_y+lengthdir_y(len, direction),
		2, image_blend, image_blend
	);

	//Draw Collision
	var inst = collision_line(_x,_y, 
		_x+lengthdir_x(len, direction),
		_y+lengthdir_y(len, direction),
		obj_faction, false, false
	);

	if(inst != noone){
		if(inst.faction != faction){
			with(inst){
				if(!immuneToLaser) event_perform(ev_other,ev_user1);
			}
		}
	}
}
