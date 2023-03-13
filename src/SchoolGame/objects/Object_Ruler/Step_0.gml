/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.hit{
	sprite_index = Sprite_Ruler
	a = point_direction(x, y, mouse_x, mouse_y)
	
	if global.in_center_x and global.in_center_y
		image_angle = -a + a % 10
	else
		image_angle = a - a % 10
	
	if global.right_weapon{
		if a > 100 and a < 180
			image_angle = 100
		else if a > 180 and a < 260
			image_angle = 260
	}else
		image_angle = min(max(image_angle, 80), 280)
	
	if global.in_center_x and global.in_center_y
		image_angle = -a + a % 10
}
     
depth = Object_MainHero.depth + 2 * (a > 0 and a < 180);

mplayer_move(global.player_speed)