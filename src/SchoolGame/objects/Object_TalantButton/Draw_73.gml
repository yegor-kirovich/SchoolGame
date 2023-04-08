/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if max_lvl == 1 and cur_lvl == 1{
	draw_rectangle(x, y + sprite_height, x + sprite_width, y + sprite_height * 1.05, 0)
}
if max_lvl == 3 {
	for(var i = 0; i < cur_lvl; i++){
		if i == 0{
			var offset1 = i * (sprite_width / (max_lvl))
		}
		else{
			var offset1 = i * (sprite_width / (max_lvl)) + 4
		}
		var offset2 = (i + 1) * (sprite_width / (max_lvl))
		draw_rectangle(x + offset1, y + sprite_height, x + offset2, y + sprite_height * 1.05, 0)
	}
}