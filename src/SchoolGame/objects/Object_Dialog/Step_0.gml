/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
say = global.replica != ""
visible = say

i += 0.05

if say{
	if global.letters != global.replica{
		global.letters += string_char_at(global.replica, cur_letter);
		cur_letter += 1
	}
}
else if not say{
	global.letters = ""
	cur_letter = 1
}