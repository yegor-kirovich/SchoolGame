var cameraX = camera_get_view_x(global.Camera);
var cameraY = camera_get_view_y(global.Camera);
var cameraWidth = camera_get_view_width(global.Camera);
var cameraHeight = camera_get_view_height(global.Camera);

var targetX = cameraTarget.x - cameraWidth / 2;
var targetY = cameraTarget.y - cameraHeight / 2;


targetX = clamp(targetX, 0, room_width - cameraWidth);
targetY = clamp(targetY, 0, room_height - cameraHeight);


cameraX = lerp(cameraX, targetX, CameraSpeed);
cameraY = lerp(cameraY, targetY, CameraSpeed);


camera_set_view_pos(global.Camera, cameraX, cameraY);
camera_set_view_size(global.Camera, cameraWidth, cameraHeight);