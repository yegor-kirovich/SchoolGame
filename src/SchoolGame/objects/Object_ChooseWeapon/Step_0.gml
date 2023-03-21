/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

Ruler.x = x + 15
Ruler.y = y + 15

Papers.x = x + 330
Papers.y = y + 15

Smoke.x = x + 645
Smoke.y = y + 15

if global.touch_shop and mouse_y >= y + 435{
	if Close.y > y + 435{
		Close.y -= 15
	}
	else{
		Close.y = y + 435
	}
}
else if global.touch_shop and mouse_y < y + 435{
	if Close.y < y + 540{
		Close.y += 15
	}
	else{
		Close.y = y + 540
	}
}
else{
	Close.y = y + 540
}
Close.x = x