global.CameraSizes = [[320, 180],[640, 360], [960, 540]]
global.CameraNum = array_length(global.CameraSizes) - 1
global.CameraWidth = global.CameraSizes[global.CameraNum][0]
global.CameraHeight = global.CameraSizes[global.CameraNum][1]
#macro CameraScale 2
#macro CameraSpeed 0.1
window_set_fullscreen(false)
var windowWidth = global.CameraWidth * CameraScale
var windowHeight = global.CameraHeight * CameraScale
surface_resize(application_surface, global.CameraWidth * CameraScale, global.CameraHeight * CameraScale);
window_set_size(global.CameraWidth * CameraScale, global.CameraHeight * CameraScale);
window_set_position(display_get_width() / 2 - windowWidth / 2, display_get_height() / 2 - windowHeight / 2);


if instance_exists(Object_MainHero){
	cameraTarget = Object_MainHero
}
else{
	cameraTarget = room
}
global.Camera = camera_create_view(0, 0, global.CameraWidth, global.CameraHeight);
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);