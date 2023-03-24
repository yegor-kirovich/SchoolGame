/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var bar = [Sprite_LevelBar0, Sprite_LevelBar25, Sprite_LevelBar50, Sprite_LevelBar75, Sprite_LevelBar100]
var level = [Sprite_LevelNumber1, Sprite_LevelNumber2, Sprite_LevelNumber3]

if global.ex == 100{
	global.ex = 0
	global.level += 1
}

draw_self()
draw_sprite(level[global.level - 1], 1, x - sprite_width / 2 - 20, y - sprite_height / 2 - 5)
draw_sprite(bar[global.ex / 25], 1, x - sprite_width / 2 + 20, y - sprite_height / 2 - 8)