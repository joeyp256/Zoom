if (place_meeting(x,y -objplayer.vsp,objplayer) || place_meeting(x,y -objinteractive.vsp,objinteractive)){
global.pressed = true;
sprite_index = sprbuttonpressed;	
alarm[0] = 15;
}

