/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
inBlock = false
Close = false

if sprite_index == Sprite_ChRulerBlock{
	sprite_default = Sprite_ChRulerBlock
	sprite_hover = Sprite_ChRulerBlock_hover
	sprite_close = Sprite_ChRulerClose
	Required_level = 1
}
if sprite_index == Sprite_ChPapersBlock{
	sprite_default = Sprite_ChPapersBlock
	sprite_hover = Sprite_ChPapersBlock_hover
	sprite_close = Sprite_ChPapersClose
	Required_level = 2
}
if sprite_index == Sprite_ChSmokeBlock{
	sprite_default = Sprite_ChSmokeBlock
	sprite_hover = Sprite_ChSmokeBlock_hover
	sprite_close = Sprite_ChSmokeClose
	Required_level = 3
}