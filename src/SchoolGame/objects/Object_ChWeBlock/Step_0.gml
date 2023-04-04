/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if global.Herolevel < Required_level{
	Close = true
	sprite_index = sprite_close
}
else{
	Close = false
	if inBlock and mouse_y >= y + 460{
		sprite_index = sprite_default
	}
	else if inBlock and mouse_y < y + 460 and global.Herolevel >= Required_level{
		sprite_index = sprite_hover
	}
	else{
		sprite_index = sprite_default
	}
}