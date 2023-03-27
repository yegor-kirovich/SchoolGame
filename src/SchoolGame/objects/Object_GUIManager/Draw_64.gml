/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if not global.touch_shop{
	var w = 55 * global.Herohp

	if(w >= 277){
		w = 277
	}


	draw_sprite_part(Sprite_HP, 2, 0, 0, w, 35, x + 135, y + 58)
	draw_sprite(Sprite_HPBarEdge, 1, x, y)
}

draw_text(x, y, global.dash_ctimer)
draw_text(x, y + 10, global.dash_dtimer)