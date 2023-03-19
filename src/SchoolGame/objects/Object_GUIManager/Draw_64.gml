/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.block{
	var w = 55 * global.hp

	if(w >= 277){
		w = 277
	}


	draw_sprite_part(Sprite_HP, 2, 0, 0, w, 35, x + 135, y + 58)
	draw_sprite(Sprite_HPBarEdge, 1, x, y)
}
else if global.block{
	instance_create_layer(x + 15, y + 15, "INSTANCES", Object_ChWeBlock)
}