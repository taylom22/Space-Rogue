/// @description Insert description here
// You can write your code in this editor

/*
if(score >= 1000){
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}
*/

global.time_seconds += (delta_time*0.00000001)*room_speed;

if(lives <=0){
	room_goto(rm_gameover);
	audio_play_sound(snd_lose, 1, false);
}
