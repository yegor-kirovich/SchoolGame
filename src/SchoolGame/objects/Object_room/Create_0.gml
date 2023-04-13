/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
depth = 3

//var points = [[0.8, 8],
//              [1, 10],
//			  [1.2, 12],
//			  [1.6, 16]]
var points = [[1, 10]]
var m = 10
			  
var EnemyList = [[Object_Enemy, 1]]

var EnemyListExist = ds_list_create()

var SpawPoint = [x + 100, y + 100]

doors_list = ds_list_create()

count_doors = collision_rectangle_list(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_levelDoor, false, true, doors_list, false);

RoomIsOpen = false

RoomPoints = 1

IsClear = false

while RoomPoints != 0{
	ran = ceil(random(RoomPoints))
	enemy = instance_create_layer(SpawPoint[0], SpawPoint[1], "ENEMY",  Object_Enemy)
	ds_list_add(EnemyListExist, enemy)
	RoomPoints -= ran

}