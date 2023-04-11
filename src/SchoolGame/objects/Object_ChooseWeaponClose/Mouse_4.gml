/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.ShopColl and visible{
	global.ShopColl = false
	instance_activate_all()
	
	if x > Object_MainHero.x{
		Object_MainHero.x -= 20
	}
	else{
		Object_MainHero.x += 20
	}
	Object_MainHero.y += 20
	
	
	global.stage = 1
	allObjects = 0
	global.first_touch = false
}