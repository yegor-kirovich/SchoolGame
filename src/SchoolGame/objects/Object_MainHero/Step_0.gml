global.mouse_coord_x = mouse_x - x  // Смещение обе переменные, чтобы центр объекта 
global.mouse_coord_y = y - mouse_y // находился в (0, 0) СО
image_speed = 0.15

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


var sprites = [Sprite_Right, Sprite_RightUp, Sprite_Up, Sprite_RightUp, Sprite_Right, Sprite_RightDown, Sprite_Down, Sprite_RightDown]
global.a = point_direction(x, y, mouse_x, mouse_y)
sprite_index = sprites[global.a / 45]
image_xscale = scale - 2 * scale * (global.a >= 90 and global.a <= 270)

if room == Main_Menu{
	var a = collision_rectangle(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_Shop, false, true) == Object_Shop.id
	if not global.post_cond and a{
		global.ShopColl = a
		global.post_cond = true
	}
	else if global.post_cond and not a{
		global.post_cond = false
	}
}