/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
global.a = point_direction(x, y, mouse_x, mouse_y)

global.player_speed = 7

global.dash_coold = 10
global.dash_dur = 15
global.dash_spd = 10
global.dash_dir = [0, 0]
global.dash_ctimer = 0
global.dash_dtimer = 0


global.Herohp_max = 5
global.Herohp = global.Herohp_max
global.Heroex = 0
global.Heroex_max = 100
global.Herolevel_max = 3

global.mouse_coord_x = mouse_x - x 
global.mouse_coord_y = y - mouse_y

global.hand_diff = [30, 20]

global.hit = false
global.right = true
global.right_weapon = true

global.weapon = noone

global.Left_Hand = Object_RegularHand
global.Right_Hand = Object_RegularHand
instance_create_layer(x + global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Right_Hand)
instance_create_layer(x - global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Left_Hand)

global.Herolevel = 1
OldBarSprite = Sprite_LevelBar0
AlphaFactor = 0
step = 0