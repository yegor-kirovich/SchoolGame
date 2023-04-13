// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function Collision(object){
	return collision_rectangle(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, object, false, true) == object.id
}