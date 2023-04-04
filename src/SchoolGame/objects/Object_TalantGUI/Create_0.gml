/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
IsOpen = false
MouseIn = false

offset = 0

Ruler_talant = [["DMG+",  "-CDHit",    "+Miss", "-CDDash"],
				["",      "",          "",      "DashInv"],
				["SlowD", "DoubleHit", "",      "Dash+Hit"]]

x = global.vx - 70 + global.w
y = global.vy

for(var i = 0; i < 3; ++i){
	for(var j = 0; j < 4; ++j){
		instance_create_layer(x + 84 + 155 * j, y + 301 + i * 157, "INSTANCES", Object_TalantButton)
	}
}