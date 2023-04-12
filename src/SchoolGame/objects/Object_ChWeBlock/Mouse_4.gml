/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if visible{
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

	if global.ShopColl{
		global.ShopColl = false
		instance_activate_all()
		global.stage = 1
		global.first_touch = false
	}
}