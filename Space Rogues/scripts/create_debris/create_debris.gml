// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_debris(id, faction, num, color){
	audio_play_sound(snd_die, 1, false);
	repeat(num){inst = instance_create_layer(x,y, "Instances", obj_debris); inst.image_blend = color;};
}