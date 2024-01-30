camera = camera_create();

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(1024,768,1,100000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

camera = view_camera[0];

follow = objplayer;
xTo = xstart;
yTo = ystart;
origx= 1024;
origy= 768;
zoom = 1;
xzoom = 1;
yzoom = 1;
global.follow_zoom = 1;
zoom_spd = .4;
mouseinput = 0;