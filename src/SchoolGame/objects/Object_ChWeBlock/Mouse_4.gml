/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if sprite_index == Sprite_ChRulerBlock_hover{
	global.weapon = "ruler"
	global.Right_Hand = Object_Ruler
	global.ifChoose = true
}

if global.touch_shop{
	global.touch_shop = false
	instance_activate_all()
	
	if not global.ifChoose{
		if x > Object_MainHero.x{
			global.Right_Hand.x -= 20
		}
		else{
			global.Right_Hand.x += 20
		}
		global.Right_Hand.y += 20
	}
	
	if x > Object_MainHero.x{
		Object_MainHero.x -= 20
		global.Left_Hand.x -= 20
	}
	else{
		Object_MainHero.x += 20
		global.Left_Hand.x += 20
	}
	Object_MainHero.y += 20
	global.Left_Hand.y += 20
	
	
	global.stage = 1
	allObjects = 0
	global.first_touch = false
	global.ifChoose = false
}