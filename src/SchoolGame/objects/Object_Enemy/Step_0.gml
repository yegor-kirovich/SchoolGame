/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var dis = distance_to_object(Object_MainHero)

var _facing = sign(x - xp)
if _facing != 0 {
	facing = _facing
}

image_xscale = facing


if(state == "Idle"){
	sprite_index = Sprite_EnemyWarrior
}else if(state == "Moving"){
	sprite_index = Sprite_EnemyWWalk
}else if(state = "PreAttack"){
	sprite_index = Sprite_EnemyWPre
}else if(state = "Attack"){
	sprite_index = Sprite_EnemyWDash
}

///

if(!global.immunity and col_ctimer == 0 and collision_rectangle(mask_index.x, mask_index.y, mask_index.x + mask_index.sprite_width, mask_index.y + mask_index.sprite_height, Object_MainHero, false, true) == Object_MainHero.id){
	global.Herohp--
	col_ctimer = col_coold
}

if(enemy_hp <= 0){
	instance_destroy(id, 1)
}

if(attack_ctimer > 0)
	attack_ctimer--;
	
///
	
if(col_ctimer > 0)
	col_ctimer--;

///

if(x == xp and y == yp){
	state = "Idle"
}else{
	state = "Moving"
}

///
	
if(attack_dtimer > 50){
	state = "PreAttack"
	attack_dtimer--;
}

if (attack_dtimer > 0 and attack_dtimer <= 50){
	
	state = "Attack"
	
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

if attack_dis < dis and not attack_dtimer{
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
		circle_move = 1
		
		if((attack_ctimer <= 0) and (attack_dtimer <= 0)){
			attack_ctimer = attack_coold
			attack_dtimer = attack_dur
			state = "PreAttack"
			
			a = point_direction(x, y, Object_MainHero.x, Object_MainHero.y)
		}
	}
}

///

xp = x
yp = y