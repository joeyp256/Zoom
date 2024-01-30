
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;


//if ((follow).object_index == objdead)
//	{
//	x = xTo;
//	y = yTo;
//	}
}

// Object posistion and zoom
x += (xTo -x);
y += (yTo - y);
if (global.haszoom == true || global.hasxzoom == true){
	xzoom+=(global.follow_zoom - xzoom)*zoom_spd;
}
if(global.haszoom == true || global.hasyzoom == true){
	yzoom+=(global.follow_zoom - yzoom)*zoom_spd;
}
zoom+= (global.follow_zoom - zoom)*zoom_spd;

//Update Camera view

camera_set_view_size(camera,origx*xzoom*.65,origy*yzoom*.65);	
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);



// Zoom stuff
if (global.haszoom == true || global.hasxzoom == true || global.hasyzoom == true)
{
	global.follow_zoom += mouseinput;
	mouseinput = (mouse_wheel_up() - mouse_wheel_down());
global.follow_zoom = clamp(global.follow_zoom, 1.0, 5.0);
}