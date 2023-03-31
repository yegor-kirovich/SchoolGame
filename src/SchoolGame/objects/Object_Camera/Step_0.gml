vx = Object_MainHero.x - global.CameraWidth / 2;
vy = Object_MainHero.y - global.CameraHeight / 2;

vx = clamp(vx, 0, room_width - global.CameraWidth); // vx like a view x
vy = clamp(vy, 0, room_height - global.CameraHeight);

var camera_speed = 2;
var camera_tx = vx + (mouse_x - global.CameraWidth / 2) * camera_speed; // tx - target x
var camera_ty = vy + (mouse_y - global.CameraHeight / 2) * camera_speed;

vx = clamp(vx, 0, room_width - global.CameraWidth);
vy = clamp(vy, 0, room_height - global.CameraHeight);

vx = lerp(vx, camera_tx, 0.1);
vy = lerp(vy, camera_ty, 0.1);

camera_set_view_pos(view_camera[0], vx, vy)

