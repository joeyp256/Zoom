/// Inputs 
if (hascontrol)
{
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check(ord("W")) || keyboard_check(vk_space) || keyboard_check(vk_up);
}
else
{
key_right = 0
key_left = 0
key_jump = 0
}
/// Calculate Movement
var move = key_right - key_left;
walksp = 3 +image_xscale;
hsp = move * walksp;
grvfactor = logn(16, 16*image_yscale);
vsp = vsp + grvfactor*grv;

//// Jumping
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -6 - image_yscale;
	canjump = 0;
}

// Horizontal movment
	//wall

if (place_meeting(x+hsp,y,objwall))
{
	while (!place_meeting(x+sign(hsp),y,objwall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}

	//interactive objects

if (place_meeting(x+hsp,y,objinteractive))
{
	while (!place_meeting(x+sign(hsp),y,objinteractive))
	{
	x = x + sign(hsp);
	}
	if (objinteractive.stuck == false && global.ground ==true){
	hsp = hsp/2;
	}
	else{
		hsp=0;	
	}
}

if(place_meeting(x-objinteractive.sprite_width,y, objwall)&&place_meeting(x +hsp,y,objinteractive)){
	hsp = 0;	
}
if(place_meeting(x+objinteractive.sprite_width,y, objwall)&&place_meeting(x +hsp,y,objinteractive)){
	hsp = 0;	
}


x = x + hsp; 

// Verticle movment
	//wall
if (place_meeting(x,y +vsp, objwall))
{
	while (!place_meeting(x,y+sign(vsp),objwall))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x,y+1, objwall))	
{
	canjump = 10;
	global.ground = true;
}
else{
	global.ground = false;	
}
	//interactive object
if (place_meeting(x,y +vsp, objinteractive))
{
	while (!place_meeting(x,y+sign(vsp),objinteractive))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}
if (place_meeting(x,y+1, objinteractive))	
{
	canjump = 10;	
}

y = y + vsp; 
//Zoom

if (global.hasxzoom == true && global.hasyzoom == true){
	global.hasxzoom = false;
	global.hasyzoom = false;
	global.haszoom = true;
}

if (global.haszoom = true)
{
	
	image_xzoom = (global.follow_zoom - image_xscale);
	image_yzoom = (global.follow_zoom - image_yscale);
	image_xscale += image_xzoom*0.5;
	image_yscale += image_yzoom*0.5;

	if (place_meeting(x,y,objwall))
		{
			image_xscale = clamp(image_xscale, 1, image_xscale - 0.5);
			image_yscale = clamp(image_yscale, image_yscale, image_yscale -0.5);
			
		}
	if (image_xscale < global.follow_zoom)
	{
		global.follow_zoom = image_xscale;
	}
	if (image_yscale < global.follow_zoom)
	{
		global.follow_zoom = image_yscale;	
	}
}
if (global.hasxzoom = true)
{
	
	image_xzoom = (global.follow_zoom - image_xscale);
	image_xscale += image_xzoom*0.5;

	if (place_meeting(x,y,objwall))
		{
			image_xscale = clamp(image_xscale, 1, image_xscale - 0.5);
			
		}
	if (image_xscale < global.follow_zoom)
	{
		global.follow_zoom = image_xscale;
	}
	
}
if (global.hasyzoom = true)
{

	image_yzoom = (global.follow_zoom - image_yscale);
	image_yscale += image_yzoom*0.5;

	if (place_meeting(x,y,objwall))
		{
			image_yscale = clamp(image_yscale, image_yscale, image_yscale -0.5);	
		}
	
	if (image_yscale < global.follow_zoom)
	{
		global.follow_zoom = image_yscale;	
	}
}