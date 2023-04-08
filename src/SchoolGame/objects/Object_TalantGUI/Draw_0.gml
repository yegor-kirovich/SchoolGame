/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.touch_shop{
	draw_self()
}


// Прорисовка неипользованных талантов
var IsDraw = false
var level_sprites = [[1, Sprite_Number1],
					 [2, Sprite_Number2],
					 [3, Sprite_Number3],
					 [4, Sprite_Number4],
					 [5, Sprite_Number5],
					 [6, Sprite_Number6],
					 [7, Sprite_Number7],
					 [8, Sprite_Number8],
					 [9, Sprite_Number9]]

for(var i = 0; i < array_length(level_sprites); i++){
	if i + 1 == global.Herolevel{
		IsDraw = true
		draw_sprite(level_sprites[i][1], 1, x, y + 49)
	}
}
if not IsDraw{
	draw_sprite(Sprite_NumberB, 1, x, y + 49)
}