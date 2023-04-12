/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.right_weapon{
	x = Object_MainHero.x + global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}
else{
	x = Object_MainHero.x - global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}

mplayer_move(global.player_speed)

sprite_index = Sprite_Ruler

if not global.hit{
	work_with_weapon()
	angle_start = image_angle
}
else{
	if stage == 0{
		image_angle += 5
		change += 1
		if change == 8{
			angle_start = image_angle - 5 * 8
			stage = 1
			change = 0
		}
	}
	else if stage == 1{
		image_angle -= 5
		change += 1
		if change == 16{
			stage = 2
			change = 0
		}
	}
	else if stage == 2{
		image_angle += 5
		change += 1
		if change == 8{
			stage = 0
			change = 0
		}
	}
	
}

var ar = point_direction(x, y, mouse_x, mouse_y)
depth = Object_MainHero.depth - (ar > 180 and ar < 360)