/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
depth = -1

if MouseIn{
	if offset == -430{
		IsOpen = true
	}
	else{
		offset += -10
	}
}
else if not MouseIn{
	if offset == 0{
		IsOpen = false
	}
	else{
		offset += 10
	}
}