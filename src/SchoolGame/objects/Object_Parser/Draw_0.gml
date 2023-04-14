/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(timer > 16) 
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, -1, 1)
else if(timer > 12)
	draw_sprite_ext(sprite_index, 1, x, y, 1, 1, image_angle, -1, 1)
else if(timer > 8)
	draw_sprite_ext(sprite_index, 2, x, y, 1, 1, image_angle, -1, 1)
else if(timer > 4)
	draw_sprite_ext(sprite_index, 3, x, y, 1, 1, image_angle, -1, 1)
else 
	draw_sprite_ext(sprite_index, 4, x, y, 1, 1, image_angle, -1, 1)