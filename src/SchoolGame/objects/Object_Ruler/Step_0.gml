/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.right_weapon{
	x = Object_MainHero.x + global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}
else{
	x = Object_MainHero.x - global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}

mplayer_move(global.player_speed)

if not global.hit{
	sprite_index = Sprite_Ruler
	work_with_weapon()
}

var ar = point_direction(x, y, mouse_x, mouse_y)
depth = Object_MainHero.depth - (ar > 180 and ar < 360);