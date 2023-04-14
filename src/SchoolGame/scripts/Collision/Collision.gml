// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function Collision(object, offset){
	return collision_rectangle(mask_index.x - offset, mask_index.y - offset, mask_index.x + mask_index.sprite_width + offset, mask_index.y + mask_index.sprite_height + offset, object, false, true) == object.id
}