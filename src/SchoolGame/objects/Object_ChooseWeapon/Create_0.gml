/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
Ruler = instance_create_layer(x + 11, y + 11, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChRulerBlock,
																			  depth: -1})
Papers = instance_create_layer(x + 450 + 11 * 2, y + 11, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChPapersBlock,
																			  depth: -1})
Smoke = instance_create_layer(x + 450 * 2 + 11 * 3, y + 11, "INSTANCES", Object_ChWeBlock, {sprite_index: Sprite_ChSmokeBlock,
																			  depth: -1})
Close = instance_create_layer(x, y + 405, "INSTANCES", Object_ChooseWeaponClose, {image_alpha: 0.85,
																			      depth: -2})

global.ShopColl = false
inBlock = false