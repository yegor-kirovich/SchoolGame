sprite_index = Sprite_EnergyStroke
if (keyboard_check_pressed(ord("E"))) {
	global.Herohp++
	instance_destroy()
}