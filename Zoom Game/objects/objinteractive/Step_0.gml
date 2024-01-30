
//horizontal movement
if (place_meeting(x+hsp,y,objwall))
{
	while (!place_meeting(x+sign(hsp),y,objwall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
	stuck = true;
}
else{
	stuck = false;
}


if(instance_place(x,y,objplayer) && stuck ==false && global.ground ==true)
{
	hsp = objplayer.hsp;
}
else {
hsp = 0;	
}
	
x = x + hsp;

//vertical movement
vsp = vsp + grv;

if (place_meeting(x,y +vsp, objwall))
{
	while (!place_meeting(x,y+sign(vsp),objwall))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 


