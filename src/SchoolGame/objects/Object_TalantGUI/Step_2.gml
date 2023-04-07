/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

y = global.vy
x = global.vx - 50 + global.CameraWidth + offset

for(var i = 0; i < array_length(Ruler_talant); ++i){
	for(var j = 0; j < array_length(Ruler_talant[i]); j++){
		if Ruler_talant[i][j] != ""{
			global.Button_list[i][j].x = x + 63 + 116 * j
			global.Button_list[i][j].y = y + 226 + 118 * i
		}
	}
}