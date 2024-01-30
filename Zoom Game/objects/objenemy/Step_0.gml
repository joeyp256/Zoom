vsp = vsp + grv;


//Don't walk off edges

if (grounded) && (afraidofheights) && (!place_meeting(x + hsp, y+1, objwall))
{
	hsp = -hsp;	
}

// Horizontal movment
if (place_meeting(x+hsp,y,objwall))
{
	while (!place_meeting(x+sign(hsp),y,objwall))
	{
	x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp; 


// Verticle movment
if (place_meeting(x,y +vsp,objwall))
{
	while (!place_meeting(x,y+sign(vsp),objwall))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

///Animation
if (!place_meeting(x,y+1, objwall))
{
	grounded = false;
	sprite_index = sprenemya;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else  image_index = 0; 
}
else 
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sprenemy;
	}
	else
	{
	sprite_index = sprenemyr;
	}
}


if (hsp != 0)  image_xscale = sign(hsp) * size;
image_yscale = size;

