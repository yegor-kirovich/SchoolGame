/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.hit{
	sprite_index = Sprite_Ruler
	work_with_weapon()
}

var ar = point_direction(x, y, mouse_x, mouse_y)
depth = Object_MainHero.depth - (ar > 180 and ar < 360);

mplayer_move(global.player_speed)