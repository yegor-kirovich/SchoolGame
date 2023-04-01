// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function camera_get_view_rect(camera){
	var cx = camera_get_view_x(camera)
	var cy = camera_get_view_y(camera)
	var ch = camera_get_view_height(camera)
	var cw = camera_get_view_width(camera)
	
	return [cx, cy, cx + cw, cy + ch]
}