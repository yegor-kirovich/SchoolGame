/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
IsOpen = false
col = false

if image_xscale == 7{
	door_wall = instance_create_layer(x + sprite_width / 2 - 12, y, "INSTANCES", Object_DoorWall)
}
else if image_xscale == 9{
	door_wall = instance_create_layer(x, y + sprite_height / 2 + 10, "INSTANCES", Object_DoorWall, {image_angle: 90})
}