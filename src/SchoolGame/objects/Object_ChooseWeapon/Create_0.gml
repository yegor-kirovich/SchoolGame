/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler = instance_create_layer(x + 15, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChRulerBlock,
																			  depth: -1})
Papers = instance_create_layer(x + 600 + 15 * 2, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChPapersBlock,
																			  depth: -1})
Smoke = instance_create_layer(x + 600 * 2 + 15 * 3, y + 15, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChSmokeBlock,
																			  depth: -1})
Close = instance_create_layer(x, y + 1080, "INSTANCES", Object_ChooseWeaponClose, {image_alpha: 0.85,
																			      depth: -2})

global.ShopColl = false
inBlock = false