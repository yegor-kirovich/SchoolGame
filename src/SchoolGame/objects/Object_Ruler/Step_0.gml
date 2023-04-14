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
}
else if(global.hit and hit_cd > 0){
	hit_cd -= 1
	if stage == 0{
		if hit_cd == 39
			angle_start = image_angle
		
		image_angle = (image_angle + 8) % 360
		
		if hit_cd <= 32
			stage = 1
		
	}
	else if stage == 1{
		if(image_angle - 8 < 0) image_angle = 360 + (image_angle - 8)
		else image_angle = image_angle - 8
		
		if hit_cd <= 16
			stage = 2
	}
	else if stage == 2{
		var vec = point_direction(x, y, mouse_x, mouse_y) - point_direction(x, y, mouse_x, mouse_y) % 10
			
		plusik = angle_difference(vec, angle_start)
		
		var coef = plusik / 8
		
		if(coef < 0){
			if(hit_cd >= 8){
				image_angle = (image_angle + 4) % 360
			}else if(image_angle + coef / 2 < 0){
				image_angle = 360 + (image_angle + coef / 2 - 4) 
			}else{
				image_angle = image_angle + coef / 2 - 4
			}
		
		} 
		else image_angle = (image_angle + coef / 2 + 4) % 360
		
		if hit_cd == 0{
			stage = 0
			global.hit = false
		}
	}
	
}

var ar = point_direction(x, y, mouse_x, mouse_y)
depth = Object_MainHero.depth - (ar > 180 and ar < 360)