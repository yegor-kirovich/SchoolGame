/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_self()

var AlphaChange = 0.015

var BarXY = [x - sprite_width / 2 + 20, y - sprite_height / 2 - 8]
var LevelXY = [x - sprite_width / 2 - 20, y - sprite_height / 2 - 5 - 49]
var LevelUpXY = [x - sprite_width / 2 - 10, y - sprite_height / 2 - 5]

var bar = [Sprite_LevelBar0, Sprite_LevelBar25, Sprite_LevelBar50, Sprite_LevelBar75, Sprite_LevelBar100]
var level = [Sprite_Number0, Sprite_Number1, Sprite_Number2, Sprite_Number3,
			 Sprite_Number4, Sprite_Number5, Sprite_Number6, Sprite_Number7,
			 Sprite_Number8, Sprite_Number9]

//Повышение уровня
if (global.Herolevel < global.Herolevel_max) and (global.Heroex >= global.Heroex_max){
	global.Heroex %= global.Heroex_max
	global.Heroex_max = ceil(global.Heroex_max * 1.1)
	global.Herolevel += 1
	global.TalantPoints += 1
	LevelUp = true
	offset = 0
}

// Плавное появления уровня
var NewBarSprite = bar[global.Heroex / (global.Heroex_max / 4)]
if OldBarSprite != NewBarSprite{
	OldBarSprite = NewBarSprite
	step = 1
}
else if AlphaFactor >= 1 / AlphaChange{
	step = -1
}
else if AlphaFactor <= 0{
	step = 0
}

//Прорисовка уровня
var TwoDigitsNumber = global.Herolevel >= 10
if not TwoDigitsNumber{
	var LevelSprite = level[global.Herolevel]
}
else{
	var FirstDigit = level[(global.Herolevel - global.Herolevel % 10) / 10]
	var SecondDigit = level[global.Herolevel % 10]
}

if not LevelUp{
	if not TwoDigitsNumber{
		draw_sprite_ext(LevelSprite, 1, LevelXY[0], LevelXY[1], 1, 1, 0, c_white, 0 + AlphaChange * AlphaFactor)
	}
	else{
		draw_sprite_ext(FirstDigit, 1, LevelXY[0] - 25, LevelXY[1], 1, 1, 0, c_white, 0 + AlphaChange * AlphaFactor)
		draw_sprite_ext(SecondDigit, 1, LevelXY[0], LevelXY[1], 1, 1, 0, c_white, 0 + AlphaChange * AlphaFactor)
	}
	draw_sprite_ext(NewBarSprite, 1, BarXY[0], BarXY[1], 1, 1, 0, c_white, 0 + AlphaChange * AlphaFactor)
	AlphaFactor += step
}
else{
	offset += 0.5
	draw_sprite_ext(Sprite_LevelUp, 1, LevelUpXY[0], LevelUpXY[1] - offset, 0.6, 0.6, 0, c_white, 1)
	if offset == 20{
		LevelUp = false
		
	}
}