/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

global.player_speed = 7

global.hp_max = 5
global.hp = global.hp_max
global.mana = 5

global.in_center_x = true
global.in_center_y = true

center_border = 80

global.mouse_coord_x = mouse_x - x 
global.mouse_coord_y = y - mouse_y

global.right = true
global.right_weapon = true

Ruler = instance_create_layer(x + 31, y + 25, "INSTANCES", Object_Ruler)
Hand = instance_create_layer(x - 31, y + 25, "INSTANCES", Object_RegularHand)