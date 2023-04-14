/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var dis = distance_to_object(Object_MainHero)

if(attack_ctimer > 0)
	attack_ctimer--;

if (attack_dtimer > 0){
	
	var ax = cos(degtorad(a))
	var ay = -sin(degtorad(a))
	
	if !place_meeting(x + ax * attack_dash_speed, y, Object_Wall){
		x += ax * attack_dash_speed
	}else{
		while (!place_meeting(x + ax * attack_dash_speed, y, Object_Wall)) x += sign(ax * attack_dash_speed)
	}
		
	if !place_meeting(x, y + ay * attack_dash_speed, Object_Wall){
		y += ay * attack_dash_speed
	}
	else{
		while (!place_meeting(x, y + sign(ay * attack_dash_speed), Object_Wall)) y += sign(ay * attack_dash_speed)
	}
	
	attack_dtimer--
}

if attack_dis < dis and attack_dtimer == 0  {
	if path_ctimer == 0{
		var found_player = mp_grid_path(global.mp_grid, path, x, y, Object_MainHero.x, Object_MainHero.y, choose(0, 1))
	
		if found_player{
			path_start(path, move_speed, path_action_stop, false)
		}
		path_ctimer = path_coold
	}else
		path_ctimer--
}else{
	if attack_dis >= dis{
		path_end()
		
		if((attack_ctimer <= 0) and (attack_dtimer <= 0)){
			attack_ctimer = attack_coold
			attack_dtimer = attack_dur
			
			a = point_direction(x, y, Object_MainHero.x, Object_MainHero.y)
		}
	}
}