if not global.ShopColl{
	draw_self()

// Прорисовка неипользованных талантов
	var IsDraw = false
	var level_sprites = [[0, Sprite_Number0],
						 [1, Sprite_Number1],
						 [2, Sprite_Number2],
						 [3, Sprite_Number3],
						 [4, Sprite_Number4],
						 [5, Sprite_Number5],
						 [6, Sprite_Number6],
						 [7, Sprite_Number7],
						 [8, Sprite_Number8],
						 [9, Sprite_Number9]]

	for(var i = 0; i < array_length(level_sprites); i++){
		if i == global.TalantPoints{
			IsDraw = true
			draw_sprite(level_sprites[i][1], 1, x + 17, y + 80)
		}
	}
	if not IsDraw{
		draw_sprite(Sprite_NumberB, 1, x + 4, y + 80)
	}
	
	
	//Прорисовка описания талантов
	var talant_title = [[Sprite_ButtonDMG, "Увеличение урона"],
						[Sprite_CDDash, "Уменьшение перезарядки рывка"],
						[Sprite_CDHit, "Уменьшение перезарядки удара"],
						[Sprite_DashHit, "Нанесение урона при рывке"],
						[Sprite_DoubleHit, "Двойной удар"],
						[Sprite_InvDash, "Рывок сквозь врагов"],
						[Sprite_Miss, "Шанс уклонения от ударов"],
						[Sprite_SlowD, "Замедление врагов при ударе"]]
	
	var first_part = [[Sprite_ButtonDMG, "Сущность улучшело материал вашего оружия, теперь ваше оружие острее и может наносить на +5/10/15 урона больше вашим врагам"],
					  [Sprite_CDDash, "Уменьшение перезарядки рывка"],
						[Sprite_CDHit, "Уменьшение перезарядки удара"],
						[Sprite_DashHit, "Нанесение урона при рывке"],
						[Sprite_DoubleHit, "Двойной удар"],
						[Sprite_InvDash, "Рывок сквозь врагов"],
						[Sprite_Miss, "Шанс уклонения от ударов"],
						[Sprite_SlowD, "Замедление врагов при ударе"]]
						
	var 
	
	if global.ButtonHover != noone{
		draw_sprite(global.ButtonHover, 1 ,x + 105, y + 750)
		for(var i = 0; i < array_length_1d(talant_title); i++){
			if talant_title[i][0] == global.ButtonHover{
				draw_set_font(Minecraft_title)
				draw_text(x + 210, y + 780, talant_title[i][1])
				draw_set_font(Minecraft_text)
				draw_text_ext(x + 105, y + 850, first_part[i][1], 20, 500)
			}
		}
	}
	
}