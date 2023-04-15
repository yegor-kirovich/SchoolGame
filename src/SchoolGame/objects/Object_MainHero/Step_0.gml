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

///

var sprites = [Sprite_Right, Sprite_RightUp, Sprite_Up, Sprite_RightUp, Sprite_Right, Sprite_RightDown, Sprite_Down, Sprite_RightDown]
var sprites_run = [Sprite_Right_Run, Sprite_RightUp_Run, Sprite_Up_Run, Sprite_RightUp_Run, Sprite_Right_Run, Sprite_RightDown_Run, Sprite_Down_Run, Sprite_RightDown_Run]

global.a = point_direction(x, y, mouse_x, mouse_y)

var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));

if (D - A != 0) or (S - W != 0)
	sprite_index = sprites_run[global.a / 45]
else
	sprite_index = sprites[global.a / 45]

image_xscale = scale - 2 * scale * (global.a >= 90 and global.a <= 270)

///

if room == Main_Menu{
	var a = Collision(Object_Shop, 0)
	if not global.post_cond and a{
		global.ShopColl = a
		global.post_cond = true
	}
	else if global.post_cond and not a{
		global.post_cond = false
	}
}

if room == Level1{
	door = collision_rectangle(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_levelDoor, false, true)
	DoorColl = Collision(Object_levelDoor, 0)
}

if instance_find(Object_EnergyDrink, 0) != noone{
	global.DrinkColl = Collision(Object_EnergyDrink, 0)
}
else{
	global.DrinkColl = false
}

if instance_exists(Object_BossDoors) and Collision(Object_BossDoors, 600) and global.Herolevel < 10{
	global.replica = global.DoorClose	
}
else{
	global.replica = ""
}

if(global.dash_dtimer == 0) global.immunity = 0

