mplayer_move(global.player_speed)

if global.weapon != noone{
	if global.right_weapon{
		x = Object_MainHero.x - global.hand_diff[0] 
		y = Object_MainHero.y + global.hand_diff[1]
	}else{
		x = Object_MainHero.x + global.hand_diff[0] 
		y = Object_MainHero.y + global.hand_diff[1]
	}
}else{
	if id == 100010{
		x = Object_MainHero.x + global.hand_diff[0] 
		y = Object_MainHero.y + global.hand_diff[1]
	}else if id == 100011{
		x = Object_MainHero.x - global.hand_diff[0] 
		y = Object_MainHero.y + global.hand_diff[1]
	}
}


var ar = point_direction(x, y, mouse_x, mouse_y)
depth = Object_MainHero.depth - (ar > 180 and ar < 360);