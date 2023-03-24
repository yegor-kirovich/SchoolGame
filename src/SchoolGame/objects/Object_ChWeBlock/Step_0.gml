/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if sprite_index == Sprite_ChRulerBlock{
	sprite_default = Sprite_ChRulerBlock
	sprite_hover = Sprite_ChRulerBlock_hover
	Required_level = 1
}
if sprite_index == Sprite_ChPapersBlock{
	sprite_default = Sprite_ChPapersBlock
	sprite_hover = Sprite_ChPapersBlock_hover
	Required_level = 2
}
if sprite_index == Sprite_ChSmokeBlock{
	sprite_default = Sprite_ChSmokeBlock
	sprite_hover = Sprite_ChSmokeBlock_hover
	Required_level = 3
}

if inBlock and mouse_y >= y + 460{
	sprite_index = sprite_default
}
else if inBlock and mouse_y < y + 460 and global.Herolevel >= Required_level{
	sprite_index = sprite_hover
}
else{
	sprite_index = sprite_default
}
