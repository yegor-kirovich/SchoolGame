/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.hit{
	sprite_index = Sprite_Ruler
	a = point_direction(x, y, mouse_x, mouse_y)
	
	if global.in_center_x and global.in_center_y
		image_angle = -(a - a % 10 + 90)
	else
		image_angle = a - a % 10 + 90
	
	if global.right_weapon
		max(0, min(180, image_angle))
	else
		image_angle = min(max(image_angle, 180), 360)
	
	if global.in_center_x and global.in_center_y
		image_angle = -(a - a % 10 + 90)
	
	
		
	depth = Object_MainHero.depth + 1;
}

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