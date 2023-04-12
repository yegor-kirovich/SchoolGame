/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
available = true
for(var i = 0; i < list_coord[0]; i++){
	var prev = global.Button_list[i][list_coord[1]]
	if prev != "" and  prev.cur_lvl < 1{
		available = false
	}
}

if cur_lvl == max_lvl or global.TalantPoints < 1{
	available = false
}

if available{
	if info == "DMG+"{
		global.damage += 2
	}
	else if info == "-CDHit"{
		global.cooldown_hit -= 0.5
	}
	else if info == "+Miss"{
		global.miss += 0.05
	}
	else if info == "-CDDash"{
		global.dash_coold -= 15
	}
	else if info == "DashInv"{
		global.Herohp -= 1
	}
	else if info == "SlowD"{
		global.Herohp -= 1
	}
	else if info == "DoubleHit"{
		global.Herohp -= 1
	}
	else if info == "Dash+Hit"{
		global.Herohp -= 1
	}
	
	cur_lvl += 1
	global.TalantPoints -= 1
}