/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
depth = -1

if MouseIn{
	if offset == -570{
		IsOpen = true
	}
	else{
		offset += -15
	}
}
else if not MouseIn{
	if offset == 0{
		IsOpen = false
	}
	else{
		offset += 15
	}
}