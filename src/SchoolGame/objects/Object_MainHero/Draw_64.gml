/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.DrinkColl{
	draw_set_font(Minecraft_text)
	draw_text(900, 1000, "[E] Выпить Энергетик")
}

if not global.ShopColl{
	
	var w = 96
	var h = 96
	
	coeff = h * (global.dash_ctimer) / global.dash_coold
	
	draw_sprite(Sprite_DashAbility, 1, 30, 950)
	if global.dash_ctimer > 0{
		draw_sprite_part(Sprite_DashCooldown, 1, 0, coeff, w, h, 30, 950 + coeff)
		draw_set_font(Minecraft_text)
		draw_text(73, 990, (global.dash_ctimer / 15) - (global.dash_ctimer / 15) % 1)
	}
}