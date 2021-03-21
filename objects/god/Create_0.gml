god_create();

view_width = 1920/6;
view_height = 1080/6;

window_scale = 3;

window_set_size(view_width*window_scale,view_height*window_scale)
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale)

seperation = abs(instPlayer1.x-instPlayer2.x);
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);