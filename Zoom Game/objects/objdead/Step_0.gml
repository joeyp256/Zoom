if (done == 0)
{	vsp = vsp + grv;

	// Horizontal movment
	if (place_meeting(x+hsp,y,objwall))
	{
		while (!place_meeting(x+sign(hsp),y,objwall))
		{
		x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp; 


	// Verticle movment
	if (place_meeting(x,y +vsp,objwall))
	{
		if (vsp > 0) 
		{
		done = 1;
		image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),objwall))
		{
		y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp; 
}
