/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var ClosePos = global.vx - 64 + global.w
var OpenPos = global.w - sprite_width

if MouseIn and not IsOpen{
	offset += -10
	if x <= OpenPos{
		IsOpen = true
	}
}
else if IsOpen and not MouseIn{
	offset += 10
	if offset == 0{
		IsOpen = false
	}
}