// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function change_weapon(){
	if global.weapon == "ruler"{
		if global.right and not global.right_weapon and not global.hit{
			instance_destroy(Object_RegularHand)
			instance_destroy(Object_Ruler)
			instance_create_depth(x + global.hand_center_distance_x, y + 30, 0, Object_Ruler)
			instance_create_depth(x - global.hand_center_distance_x, y + 30, 0, Object_RegularHand)
			global.right_weapon = true
		}
		else if not global.right and global.right_weapon and not global.hit{
			instance_destroy(Object_RegularHand)
			instance_destroy(Object_Ruler)
			instance_create_depth(x - global.hand_center_distance_x, y + 30, 0, Object_Ruler)
			instance_create_depth(x + global.hand_center_distance_x, y + 30, 0, Object_RegularHand)
			global.right_weapon = false
		}
	}
}