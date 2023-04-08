/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.touch_shop{
	var w = 55 * global.Herohp

	if(w >= 277){
		w = 277
	}


	draw_sprite_part(Sprite_HP, 2, 0, 0, w, 35, x + 135, y + 58)
	draw_sprite(Sprite_HPBarEdge, 1, x, y)
	
	var coeff = (global.dash_coold - global.dash_ctimer) / global.dash_coold;
	
	draw_sprite(Sprite_DashAbility, 1, x + 20, y + 1030)
	if global.dash_ctimer > 0
		draw_sprite_ext(Sprite_DashCooldown, 1, x + 20, y + 1030, 1, coeff, 1, c_white, 0.6)
}