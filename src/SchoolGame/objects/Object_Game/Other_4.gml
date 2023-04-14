/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var roomw = ceil(room_width / 16)
var roomh = ceil(room_width / 16)

global.mp_grid = mp_grid_create(0, 0, roomw, roomh, 16, 16)

mp_grid_add_instances(global.mp_grid, Object_Wall, false)
