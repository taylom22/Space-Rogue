var xx = choose(irandom_range(room_width*0.4, room_width*0.6));
var yy = choose(irandom_range(room_height*0.4, room_height*0.6));

if (!instance_exists(obj_player)){
	instance_create_layer(xx, yy, "Instances", obj_player);
}
