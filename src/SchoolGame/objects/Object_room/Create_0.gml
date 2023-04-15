/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var points = [[0.8, 8],
              [1, 10],
			  [1.2, 12],
			  [1.6, 16]]
			  
var EnemyList = [[Object_Enemy, 1],
				 [Object_EnemyHard, 2]]
				 
var m = 2

EnemyListExist = ds_list_create()

var SpawPoint = [[x + 500 * image_xscale, y + 500 * image_yscale, 0],
				 [x + 250 * image_xscale, y + 600 * image_yscale, 0],
				 [x + 250 * image_xscale, y + 800 * image_yscale, 0],
				 [x + 1000 * image_xscale, y + 1800 * image_yscale, 0],
				 [x + 1500 * image_xscale, y + 500 * image_yscale, 0],
				 [x + 1750 * image_xscale, y + 600 * image_yscale, 0]]

var AvalPoint = array_length(SpawPoint)

doors_list = ds_list_create()

count_doors = collision_rectangle_list(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_levelDoor, false, true, doors_list, false);

RoomIsOpen = false

RoomPoints = 0

IsClear = false

for(var i = 0; i < array_length(points); i++){
	if image_xscale == points[i][0]{
		RoomPoints = points[i][1]
	}
}

if m < RoomPoints{
	ran = ceil(random(m))
}
else{
	ran = ceil(random(RoomPoints))
}

while RoomPoints - ran > 0{
	for(var i = 0; i < array_length(SpawPoint); i ++){
		if SpawPoint[i][2] == 0{
			var spawn = i
			SpawPoint[i][2] = 1
			AvalPoint -= 1
			break
		}
	}
	for(var i = 0; i < array_length(EnemyList); i++){
		if EnemyList[i][1] == ran{
			enemy = instance_create_layer(SpawPoint[spawn][0], SpawPoint[spawn][1], "ENEMY",  EnemyList[i][0], {depth: 2})
		}
	}
	ds_list_add(EnemyListExist, enemy)
	RoomPoints -= ran
	if m <= RoomPoints{
		ran = ceil(random(m))
	}
	else{
		ran = ceil(random(RoomPoints))
	}
}