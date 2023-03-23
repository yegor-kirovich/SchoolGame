/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
global.a = point_direction(x, y, mouse_x, mouse_y)

global.player_speed = 7

global.hp_max = 5
global.hp = global.hp_max
global.mana = 5

global.mouse_coord_x = mouse_x - x 
global.mouse_coord_y = y - mouse_y

global.hand_diff = [30, 27]

global.hit = false
global.right = true
global.right_weapon = true

global.weapon = noone

global.Left_Hand = Object_RegularHand
global.Right_Hand = Object_RegularHand
instance_create_layer(x + global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Right_Hand)
instance_create_layer(x - global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Left_Hand)
hands_isDraw = false

global.level = 1