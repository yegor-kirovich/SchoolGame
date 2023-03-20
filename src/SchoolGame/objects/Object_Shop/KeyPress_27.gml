/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.touch_shop{
	global.touch_shop = false
	instance_activate_all()
	Object_MainHero.y += 20
	Object_Ruler.y += 20
	
	allObjects = 0
}