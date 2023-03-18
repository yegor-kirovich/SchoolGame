// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function work_with_weapon(){
	a = point_direction(x, y, mouse_x, mouse_y) - point_direction(x, y, mouse_x, mouse_y) % 10
	if global.right_weapon{
		if (110 >= a or 250 <= a){
			image_angle = a
		}
	else if global.mouse_coord_y > 0{
		image_angle = 110
	}
	else{
		image_angle = 250
	}
	}
 
	if not global.right_weapon{
		if (70 <= a and a <= 290){
			image_angle = a
		}
	else if global.mouse_coord_y > 0{
		image_angle = 70
	}
	else{
		image_angle = 290
	}
	}
}