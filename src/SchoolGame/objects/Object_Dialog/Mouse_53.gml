/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if say{
	if say and string_length(global.letters) != string_length(global.replica){
		global.letters = global.replica
	}
	else if string_length(global.letters) == string_length(global.replica){
		say = false
	}
}