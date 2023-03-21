/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler = instance_create_layer(x + 15, y + 15, "INSTANCES", Object_ChWeBlock)
Papers = instance_create_layer(x + 330, y + 15, "INSTANCES", Object_ChWeBlock)
Smoke = instance_create_layer(x + 645, y + 15, "INSTANCES", Object_ChWeBlock)
Close = instance_create_layer(x, y + 540, "INSTANCES", Object_ChooseWeaponClose)

Ruler.sprite_index = Sprite_ChRulerBlock
Papers.sprite_index = Sprite_ChPapersBlock
Smoke.sprite_index = Sprite_ChSmokeBlock
Close.image_alpha = 0.85

Ruler.depth = -1
Papers.depth = -1
Smoke.depth = -1
Close.depth = -2