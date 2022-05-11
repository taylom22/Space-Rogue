/// @description Enemy Spawner

time_factor = ((global.time_seconds/30) + 1)*.35;

spawn_off_camera(obj_asteroid, 5 * time_factor);
spawn_off_camera(obj_raider, 3 * time_factor);
spawn_off_camera(obj_brute, 3 * time_factor);
spawn_off_camera(obj_hunter, 2 * time_factor);

alarm[0] = 1*room_speed;
