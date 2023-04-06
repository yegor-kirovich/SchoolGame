/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
//if IsMoving
//x = global.vx - 64 + global.w

y = global.vy
x = global.vx - 64 + global.w + offset

for(var i = 0; i < array_length(Ruler_talant); ++i){
	for(var j = 0; j < array_length(Ruler_talant[i]); j++){
		if Ruler_talant[i][j] != ""{
			global.Button_list[i][j].x = x + 84 + 155 * j
			global.Button_list[i][j].y = y + 301 + 157 * i
		}
	}
}