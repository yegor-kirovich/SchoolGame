/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if sprite_index == Sprite_ChRulerBlock{
	sprite_default = Sprite_ChRulerBlock
	sprite_hover = Sprite_ChRulerBlock_hover
}
if sprite_index == Sprite_ChPapersBlock{
	sprite_default = Sprite_ChPapersBlock
	sprite_hover = Sprite_ChPapersBlock_hover
}
if sprite_index == Sprite_ChSmokeBlock{
	sprite_default = Sprite_ChSmokeBlock
	sprite_hover = Sprite_ChSmokeBlock_hover
}

if inBlock and mouse_y >= y + 460{
	sprite_index = sprite_default
}
else if inBlock and mouse_y < y + 460{
	sprite_index = sprite_hover
}
else{
	sprite_index = sprite_default
}
