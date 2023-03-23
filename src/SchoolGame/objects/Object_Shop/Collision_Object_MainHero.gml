/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.touch_shop{
	global.touch_shop = true
	global.first_touch = true
	var offset = 0
	for(var i = 0; i < instance_count; ++i){
		var obj = instance_find(all, i);
		if obj.sprite_index != -1 and obj != Object_ChooseWeapon and obj != Object_ChWeBlock{
			allObjects[i - offset, 0] = obj.sprite_index
			allObjects[i - offset, 1] = obj.image_index
			allObjects[i - offset, 2] = obj.x
			allObjects[i - offset, 3] = obj.y
			allObjects[i - offset, 4] = obj.image_xscale
			allObjects[i - offset, 5] = obj.image_yscale
			allObjects[i - offset, 6] = obj.image_angle
			allObjects[i - offset, 7] = obj.image_blend
			allObjects[i - offset, 8] = obj.image_alpha
		}
		else{
			++offset
		}
	}
	instance_deactivate_all(true)
	instance_activate_object(Object_GUIManager)
	instance_activate_object(Object_ChooseWeapon)
	instance_activate_object(Object_ChWeBlock)
	instance_activate_object(Object_ChooseWeaponClose)
	
}