/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler.x = x + 11
Ruler.y = y + 11

Papers.x = x + 1 * 450 + 2 * 11
Papers.y = y + 11

Smoke.x = x + 2 * 450 + 3 * 11
Smoke.y = y + 11

if global.first_touch{
	Close.y = y + 810
	global.first_touch = false
}

var sprite_h = 120

if mouse_y >= y + 810 - sprite_h{
	inBlock = true
}
else{
	inBlock = false
}

if global.ShopColl and inBlock{
	if Close.y - 9 > y + 810 - sprite_h{
		Close.y -= 9
	}
	else{
		Close.y = y + 810 - sprite_h
	}
}
else if global.ShopColl and not inBlock{
	if Close.y + 9 < y + 810{
		Close.y += 9
	}
	else{
		Close.y = y + 810
	}
}
else{
	Close.y = y + 810
}
Close.x = x