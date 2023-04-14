/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if room == Main_Menu{
	if global.ShopColl{
		Object_ChooseWeapon.visible = true
		Object_ChooseWeapon.x = camera_get_view_x(view_camera[0])
		if global.stage == 1{
			Object_ChooseWeapon.y = camera_get_view_y(view_camera[0]) + 540
			ac = 0.5
			vel = 32
			global.stage = 2
		}
		else if global.stage == 2{
			vel -= ac
			Object_ChooseWeapon.y -= vel
			if Object_ChooseWeapon.y <= camera_get_view_y(view_camera[0]){
				global.stage = 3
			}
		}
		else{
			Object_ChooseWeapon.y = camera_get_view_y(view_camera[0])
		}
	
	}
	else{
		Object_ChooseWeapon.visible = false
	}
}