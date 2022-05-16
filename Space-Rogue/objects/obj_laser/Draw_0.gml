var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
var len = max(vw, vh);
laser_width = 5;

if(instance_exists(creator)){
	_x = creator.x + lengthdir_x(16, direction);
	_y = creator.y + lengthdir_y(16, direction);

	//Draw Line
	draw_line_width_color(_x,_y, 
		_x+lengthdir_x(len, direction),
		_y+lengthdir_y(len, direction),
		laser_width, image_blend, image_blend
	);

	//Draw Collision
	_instlist = ds_list_create();
	var _num = collision_line_list(_x,_y, 
		_x+lengthdir_x(len, direction),
		_y+lengthdir_y(len, direction),
		obj_entity, false, true, _instlist, true
	);
	
	if(_num > 0){
		for (var i =0; i < _num; ++i;){
			inst = _instlist[| i];
			if(inst != noone){
				if(inst == obj_bullet) instance_destroy(inst);
				if(inst.faction != faction){
					with(inst){
						if(!immuneToLaser) event_perform(ev_other,ev_user1);	
					}
				}
			}
		}
	ds_list_destroy(_instlist);
	}
}
