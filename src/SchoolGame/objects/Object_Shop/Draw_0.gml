/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_self()
if global.touch_shop{
	for(var i = 0; i < array_height_2d(allObjects); ++i){
		draw_sprite_ext(allObjects[i, 0], allObjects[i, 1], allObjects[i, 2], 
		allObjects[i, 3], allObjects[i, 4], allObjects[i, 5], allObjects[i, 6], 
		allObjects[i, 7], allObjects[i, 8])
	}

}