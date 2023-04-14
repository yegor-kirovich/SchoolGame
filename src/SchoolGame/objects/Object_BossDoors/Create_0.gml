/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
IsOpen = false
col = false

if image_angle % 180 == 0{
	door_wall = instance_create_layer(x + sprite_width / 2, y, "INSTANCES", Object_DoorWall, {image_angle: 0})
}
else{
	door_wall = instance_create_layer(x, y - sprite_height / 2, "INSTANCES", Object_DoorWall, {image_angle: 90})
}