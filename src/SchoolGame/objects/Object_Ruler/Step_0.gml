/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.hit{
	sprite_index = Sprite_Ruler
	a = point_direction(x, y, mouse_x, mouse_y)
	image_angle = a - a % 10
}
     
depth = Object_MainHero.depth + 2 * (a > 0 and a < 180);

//global.right_weapon

mplayer_move(global.player_speed)