/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.touch_shop{
	global.touch_shop = false
	instance_activate_all()
	
	if x > Object_MainHero.x{
		Object_MainHero.x -= 15
	}
	else{
		Object_MainHero.x += 15
	}
	Object_MainHero.y += 15
	
	
	global.stage = 1
	allObjects = 0
	global.first_touch = false
}