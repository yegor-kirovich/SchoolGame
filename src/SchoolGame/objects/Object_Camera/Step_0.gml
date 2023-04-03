var player = instance_find(Object_MainHero, 0)

x = player.x - global.CameraWidth / 2;
y = player.y - global.CameraHeight / 2;
mplayer_move(global.player_speed)
vx = x
vy = y

var camera_speed = 4;
var camera_tx = vx + (mouse_x - player.x) * camera_speed; // tx - target x
var camera_ty = vy + (mouse_y - player.y) * camera_speed;
vx = lerp(vx, camera_tx, 0.05)
vy = lerp(vy, camera_ty, 0.05);

global.vx = vx
global.vy = vy

camera_set_view_pos(view_camera[0], vx, vy)
