/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
attack_dis = 300
attack_coold = 200
attack_ctimer = 0
attack_dur = 30
attack_dtimer = 0
attack_dash_speed = 16

sprite_index = Sprite_EnemyWizState

enemy_hp = 3
enemy_attack = 2

///

alpha = 0
where = 0
circle_move = 0

///

col_ctimer = 0
col_coold = 60

///

facing = 1
xp = x
yp = y
state = "Idle"

// States: Idle, Moving, PreAttack, Attack, Dead

///

path_coold = irandom(100)
path_ctimer = 0

move_speed = 7;

path = path_add()

a = 0