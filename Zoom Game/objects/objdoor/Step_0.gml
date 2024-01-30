if (global.pressed == true){
	sprite_index = sprdooropening;	
	if (image_index == 3){
		image_speed = 0;	
	}
	else{
	image_speed = 1;	
	}
}
else{
	image_speed = -1;
	if(image_index ==1){
		sprite_index = sprdoorclosed;	
	}
}
