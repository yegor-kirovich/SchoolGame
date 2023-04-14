/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
draw_self()

if hit_cd > 32
		draw_sprite_ext(Sprite_RulerPar, 0, parserx, parsery, 1, 1, angle_start, -1, 1)
		
else if hit_cd > 24
		draw_sprite_ext(Sprite_RulerPar, 1, parserx, parsery, 1, 1, angle_start, -1, 1)
		
else if hit_cd > 16
		draw_sprite_ext(Sprite_RulerPar, 2, parserx, parsery, 1, 1, angle_start, -1, 1)
		
else if hit_cd > 8
		draw_sprite_ext(Sprite_RulerPar, 3, parserx, parsery, 1, 1, angle_start, -1, 1)
		
else if hit_cd > 0
		draw_sprite_ext(Sprite_RulerPar, 4, parserx, parsery, 1, 1, angle_start, -1, 1)
		