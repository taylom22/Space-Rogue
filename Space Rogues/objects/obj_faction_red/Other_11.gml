/// @description Take Damage
if(HP>0){
	HP -= 1;
	audio_play_sound(snd_hurt, 2, false);
	create_debris(id, faction, 5, color);
}

if(HP <= 0){
	instance_destroy();
}
