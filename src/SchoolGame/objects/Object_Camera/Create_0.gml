view_camera[0] = camera_create_view(0, 0, 960, 540)
view_enabled = true
view_visible[0] = true
view_hport[0] = 540
view_wport[0] = 960
camera_set_view_size(view_camera[0], global.CameraWidth, global.CameraHeight)

vx = Object_MainHero.x - global.CameraWidth / 2;
vy = Object_MainHero.y - global.CameraHeight / 2;

global.vx = vx
global.vy = vy
