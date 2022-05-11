/// @description Insert description here
// You can write your code in this editor
if(dying = false){exit;}

flashCounter -=1;

var alpha = min(1, flashCounter/60);

image_alpha = alpha;

if(alpha == 0){
	instance_destroy();
}
