/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
doors_list = ds_list_create()

depth = 3
count_doors = collision_rectangle_list(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_levelDoor, false, true, doors_list, false);

if not RoomIsOpen{
	for(var i = 0; i < count_doors; i++){
		if doors_list[| i].IsOpen{
			RoomIsOpen = true
		}	
	}
}

if not IsClear{
	if array_length(EnemyListExist) == 0{
		IsClear = true
	}
}