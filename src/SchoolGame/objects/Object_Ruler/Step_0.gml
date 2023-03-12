/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.hit{
	sprite_index = Sprite_Ruler
	a = point_direction(x, y, mouse_x, mouse_y)
	
	if global.in_center_x and global.in_center_y
		image_angle = -(a - a % 10)
	else
		image_angle = a - a % 10
	
	if global.right_weapon
		max(0, min(180, image_angle))
	else
		image_angle = min(max(image_angle, 180), 360)
	
	if global.in_center_x and global.in_center_y
		image_angle = -(a - a % 10)
	
	
		
	var depth_flag = global.mouse_coord_y > 0;        
	depth = Object_MainHero.depth + depth_flag;
}

mplayer_move(global.player_speed)