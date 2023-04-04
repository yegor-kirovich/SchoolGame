/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler = instance_create_layer(x + 15, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChRulerBlock,
																			  depth: -1})
Papers = instance_create_layer(x + 330, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChPapersBlock,
																			  depth: -1})
Smoke = instance_create_layer(x + 645, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChSmokeBlock,
																			  depth: -1})
Close = instance_create_layer(x, y + 540, "INSTANCES", Object_ChooseWeaponClose, {image_alpha: 0.85,
																			      depth: -2})

global.first_touch = false
inBlock = false