/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_self()

if(hit_cd > 16) draw_sprite_ext(Sprite_RulerPar1, 1, parserx, parsery, 1, 1, angle_start, -1, 1)
else if(hit_cd > 8) draw_sprite_ext(Sprite_RulerPar2, 1, parserx, parsery, 1, 1, angle_start, -1, 1)