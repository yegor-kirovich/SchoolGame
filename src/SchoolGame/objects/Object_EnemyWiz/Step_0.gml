/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var dis = distance_to_object(Object_MainHero)

var _facing = sign(x - xp)
if _facing != 0 {
	facing = _facing
}

image_xscale = facing


if(state == "Idle"){
	sprite_index = Sprite_EnemyWizState
}else if(state == "Moving"){
	sprite_index = Sprite_EnemyWizMoving
}else if(state = "PreAttack"){
	sprite_index = Sprite_EnemyWizPreAttack
}

///

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
	
if(attack_dtimer > 1){
	state = "PreAttack"
	attack_dtimer--;
}

if (attack_dtimer == 1){
	
	var inst1 = instance_create_layer(x + sprite_width / 1.5, y, "Instances", Object_WizBullet)
	with (inst1){
		speediex = 22 
		speediey = 0
	}
	
	var inst2 = instance_create_layer(x + sprite_width / 1.5, y = sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst2){
		speediex = 15.6
		speediey = -15.6
	}
	
	var inst3 = instance_create_layer(x, y + sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst3){
		speediex = 0
		speediey = -15.6
	}
	
	var inst4 = instance_create_layer(x - sprite_width / 1.5, y + sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst4){
		speediex = -15.6
		speediey = -15.6
	}
	
	var inst5 = instance_create_layer(x - sprite_width / 1.5, y, "Instances", Object_WizBullet)
	with (inst5){
		speediex = -22 
		speediey = 0
	}
	
	var inst6 = instance_create_layer(x - sprite_width / 1.5, y + sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst6){
		speediex = -15.6 
		speediey = 15.6 
	}
	
	var inst7 = instance_create_layer(x, y + sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst7){
		speediex = 0 
		speediey = 15.6
	}
	
	var inst8 = instance_create_layer(x + sprite_width / 1.5, y + sprite_width / 1.5, "Instances", Object_WizBullet)
	with (inst8){
		speediex = 15.6 
		speediey = 15.6
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
		}
	}
}

///

xp = x
yp = y