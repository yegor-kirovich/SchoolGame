/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if sprite_index == Sprite_ChRulerBlock_hover and global.weapon != "ruler"{
		global.weapon = "ruler"
		if global.right{
			global.Right_Hand = Object_Ruler
			instance_destroy(global.Right_Hand)
			instance_create_layer(x + global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Right_Hand)
		}
		else{
			global.Left_Hand = Object_Ruler
			instance_destroy(global.Left_Hand)
			instance_create_layer(x - global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Left_Hand)
		}
}

if global.touch_shop{
	global.touch_shop = false
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