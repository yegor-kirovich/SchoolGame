/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.DrinkColl{
	draw_set_font(Minecraft_text)
	draw_text(900, 1000, "[E] Выпить Энергетик")
}

if not global.ShopColl{
	var coeff = sprite_height -	(sprite_height * global.dash_coold) / (global.dash_coold - global.dash_ctimer)
	
	draw_sprite(Sprite_DashAbility, 1, 20, 1030)
	if global.dash_ctimer > 0{
		draw_sprite_part(Sprite_DashCooldown, 1, 20, 1030 + sprite_height - coeff, sprite_width, coeff, 20, 1030)
	}
		
}