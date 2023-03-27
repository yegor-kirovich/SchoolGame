global.mouse_coord_x = mouse_x - x  // Смещение обе переменные, чтобы центр объекта 
global.mouse_coord_y = y - mouse_y // находился в (0, 0) СО
image_speed = 0.15

if (global.dash_dtimer == 0)
	mplayer_move(global.player_speed)

global.right = global.mouse_coord_x > 0

// Изменение положения оружия
if global.weapon == "ruler"{
	// Проверка если положение мышки и оружие различаются
	var checker = global.right xor global.right_weapon
	if checker and not global.hit{
		// Также изменяется переменная показывающая положения оружия
		global.right_weapon = not global.right_weapon
	}
}


var sprites = [Sprite_Right, Sprite_RightUp, Sprite_Up, Sprite_LeftUp, Sprite_Left, Sprite_LeftDown, Sprite_Down, Sprite_RightDown]

global.a = point_direction(x, y, mouse_x, mouse_y)
sprite_index = sprites[global.a / 45]

///
///

if (global.dash_ctimer > 0) 
	global.dash_ctimer--

if (global.dash_dtimer > 0) {
	x += global.dash_spd * global.dash_dir[0]
	y += global.dash_spd * global.dash_dir[1]
	
	global.dash_dtimer--
}