var xx = choose(irandom_range(room_width*0.4, room_width*0.6));
var yy = choose(irandom_range(room_height*0.4, room_height*0.6));

with(obj_asteroid) instance_destroy();

if (!instance_exists(obj_player)) && (room = rm_game){
	instance_create_layer(xx, yy, "Instances", obj_player);
}

repeat(6){
		var xx = choose(irandom_range(0, room_width*0.3), irandom_range(room_width*.07, room_width));
		var yy = choose(irandom_range(0, room_height*0.3), irandom_range(room_height*.07, room_height));
		
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
