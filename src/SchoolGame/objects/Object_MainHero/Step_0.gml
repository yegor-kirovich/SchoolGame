global.mouse_coord_x = mouse_x - x  // Смещение обе переменные, чтобы центр объекта 
global.mouse_coord_y = y - mouse_y // находился в (0, 0) СО


var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));

var hor = D - A;
var ver = S - W;

if (hor != 0 or ver != 0)
{
    var spd = 4;
    var ang = point_direction(0, 0, hor, ver);
    var xadd = lengthdir_x(spd, ang);
    var yadd = lengthdir_y(spd, ang);
    x = x + xadd;
    y = y + yadd;
}


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