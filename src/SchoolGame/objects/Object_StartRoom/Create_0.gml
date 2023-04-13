/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
depth = 2

doors_list = ds_list_create()

count_doors = collision_rectangle_list(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_levelDoor, false, true, doors_list, false);

RoomIsOpen = true