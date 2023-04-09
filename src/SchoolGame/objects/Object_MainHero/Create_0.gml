/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
global.a = point_direction(x, y, mouse_x, mouse_y)
scale = image_xscale

global.player_speed = 7

global.dash_coold = 120
global.dash_dur = 20
global.dash_spd = 15
global.dash_ctimer = 0
global.dash_dtimer = 0

global.damage = 3
global.cooldown_hit = 2

global.miss = 0 // In percent

global.Herohp_max = 5
global.Herohp = global.Herohp_max
global.Heroex = 0
global.Heroex_max = 100
global.Herolevel_max = 20
global.Herolevel = 1
global.TalantPoints = 1

global.coins = 0

global.mouse_coord_x = mouse_x - x 
global.mouse_coord_y = y - mouse_y

global.hand_diff = [40, 30]

global.hit = false
global.right = true
global.right_weapon = true

global.weapon = noone

global.Left_Hand = Object_RegularHand
global.Right_Hand = Object_RegularHand
Right = instance_create_layer(x + global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Right_Hand)
Left = instance_create_layer(x - global.hand_diff[0], y + global.hand_diff[1], "INSTANCES", global.Left_Hand)

global.Hands_id = [Left.id, Right.id]

OldBarSprite = Sprite_LevelBar0
AlphaFactor = 0
step = 0
LevelUp = false