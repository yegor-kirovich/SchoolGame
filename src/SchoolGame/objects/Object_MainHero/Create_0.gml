/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

player_speed = 4

global.hp = 3
global.mana = 5

global.in_center_x = true
global.in_center_y = true

center_border = 80

global.right = true
global.right_weapon = true

Ruler = instance_create_layer(x + 40, y, "INSTANCES", Object_Ruler)
Hand = instance_create_layer(x - 40, y, "INSTANCES", Object_RegularHand)