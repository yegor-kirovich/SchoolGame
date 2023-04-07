/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
IsOpen = false
MouseIn = false

offset = 0

Ruler_talant = [["DMG+",  "-CDHit",    "+Miss", "-CDDash"],
				["",      "",          "",      "DashInv"],
				["SlowD", "DoubleHit", "",      "Dash+Hit"]]
				
global.Button_list = []

x = global.vx - 50 + global.w
y = global.vy

for(var i = 0; i < array_length(Ruler_talant); ++i){
	var a = []
	for(var j = 0; j < array_length(Ruler_talant[i]); ++j){
		if Ruler_talant[i][j] != ""{
			var button = instance_create_layer(x + 63 + 116 * j, y + 226 + 118 * i, "INSTANCES", Object_TalantButton, {depth: -2,
																													   info: Ruler_talant[i][j],
																													   list_coord: [i, j]})
		}
		else{
			var button = ""
		}
		array_push(a, button)
	}
	array_push(global.Button_list, a)
}