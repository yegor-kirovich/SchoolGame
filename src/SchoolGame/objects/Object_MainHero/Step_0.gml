global.mouse_coord_x = mouse_x - x  // Смещение обе переменные, чтобы центр объекта 
global.mouse_coord_y = y - mouse_y // находился в (0, 0) СО


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


if global.right and not global.right_weapon and not global.hit{
	Ruler.x = x + 40;
	Hand.x = x - 40;
	global.right_weapon = true
}
else if not global.right and global.right_weapon and not global.hit{
	Ruler.x = x - 40;
	Hand.x = x + 40;
	global.right_weapon = false
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