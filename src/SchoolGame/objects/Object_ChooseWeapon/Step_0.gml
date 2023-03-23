/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

Ruler.x = x + 15
Ruler.y = y + 15

Papers.x = x + 330
Papers.y = y + 15

Smoke.x = x + 645
Smoke.y = y + 15

if global.first_touch{
	Close.y = y + 540
	global.first_touch = false
}

var sprite_h = 80

if mouse_y >= y + 540 - sprite_h{
	inBlock = true
}
else{
	inBlock = false
}

if global.touch_shop and inBlock{
	if Close.y - 12 > y + 540 - sprite_h{
		Close.y -= 12
	}
	else{
		Close.y = y + 540 - sprite_h
	}
}
else if global.touch_shop and not inBlock{
	if Close.y + 12 < y + 540{
		Close.y += 12
	}
	else{
		Close.y = y + 540
	}
}
else{
	Close.y = y + 540
}
Close.x = x