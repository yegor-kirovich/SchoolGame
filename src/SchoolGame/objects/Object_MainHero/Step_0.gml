global.mouse_coord_x = mouse_x - x  // Смещение обе переменные, чтобы центр объекта 
global.mouse_coord_y = y - mouse_y // находился в (0, 0) СО
image_speed = 0.15


mplayer_move(global.player_speed)


if(-center_border <= global.mouse_coord_x and global.mouse_coord_x <= center_border){
	global.in_center_x = true
}
else{
	global.in_center_x = false
}
if(-center_border <= global.mouse_coord_y and global.mouse_coord_y <= center_border){
	global.in_center_y = true
}
else{
	global.in_center_y = false
}


if global.right and global.mouse_coord_x < 0{
	global.right = false
}
if not global.right and global.mouse_coord_x > 0{
	global.right = true
}

// Изменение положения оружия
if global.weapon == "ruler"{
	// Проверка если положение мышки и оружие различаются
	var checker = global.right xor global.right_weapon
	if checker and not global.hit{
		// Оружие меняется местами
		var storage = global.Right_Hand
		global.Right_Hand = global.Left_Hand
		global.Left_Hand = storage
		
		// Также изменяется переменная показывающая положения оружия
		if global.right_weapon{
			global.right_weapon = false
		}
		else{
			global.right_weapon = true
		}
		
		// Удаление старых рук для последуйщего изменения
		instance_destroy(Object_RegularHand)
		instance_destroy(Object_Ruler)
		hands_isDraw = false
	}
}

// Прорисовка рук
if not hands_isDraw{
	instance_create_layer(x + hand_diff[0], y + hand_diff[1], "INSTANCES", global.Right_Hand)
	instance_create_layer(x - hand_diff[0], y + hand_diff[1], "INSTANCES", global.Left_Hand)
	hands_isDraw = true
}



if(global.in_center_x and global.in_center_y){
	sprite_index = Sprite_Idle
}
else if(global.in_center_y and global.mouse_coord_x > center_border){
	sprite_index = Sprite_Right
}
else if(global.in_center_y and global.mouse_coord_x < -center_border){
	sprite_index = Sprite_Left
}
else if(global.in_center_x and global.mouse_coord_y > center_border){
	sprite_index = Sprite_Up
}
else if(global.in_center_x and global.mouse_coord_y < -center_border){
	sprite_index = Sprite_Down
}
else if(global.mouse_coord_x > center_border and global.mouse_coord_y > center_border){
	sprite_index = Sprite_RightUp
}
else if(global.mouse_coord_x > center_border and global.mouse_coord_y < -center_border){
	sprite_index = Sprite_RightDown
}
else if(global.mouse_coord_x < -center_border and global.mouse_coord_y > center_border){
	sprite_index = Sprite_LeftUp
}
else if(global.mouse_coord_x < -center_border and global.mouse_coord_y < -center_border){
	sprite_index = Sprite_LeftDown
}