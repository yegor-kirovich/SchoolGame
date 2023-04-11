view_camera[0] = camera_create_view(0, 0, 1920, 1080)
view_enabled = true
view_visible[0] = true
camera_set_view_size(view_camera[0], global.CameraWidth, global.CameraHeight)

vx = Object_MainHero.x - global.CameraWidth / 2;
vy = Object_MainHero.y - global.CameraHeight / 2;

global.vx = vx
global.vy = vy


