sprite_index = Sprite_EnergyStroke
if (keyboard_check_pressed(ord("E"))) {
	if (global.Herohp < global.Herohp_max)
		global.Herohp++
	
	instance_destroy()
}