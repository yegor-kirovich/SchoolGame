/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler.x = x + 15
Ruler.y = y + 15

Papers.x = x + 1 * 600 + 2 * 15
Papers.y = y + 15

Smoke.x = x + 2 * 600 + 3 * 15
Smoke.y = y + 15


var sprite_h = 160

if mouse_y >= y + 1080 - sprite_h{
	inBlock = true
}
else{
	inBlock = false
}

if global.ShopColl and inBlock{
	if Close.y - 18 > y + 1080 - sprite_h{
		Close.y -= 18
	}
	else{
		Close.y = y + 1080 - sprite_h
	}
}
else if global.ShopColl and not inBlock{
	if Close.y + 18 < y + 1080{
		Close.y += 18
	}
	else{
		Close.y = y + 1080
	}
}

Close.x = x