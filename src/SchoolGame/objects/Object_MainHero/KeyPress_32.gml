/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var A = keyboard_check(ord("A"));
var D = keyboard_check(ord("D"));
var W = keyboard_check(ord("W"));
var S = keyboard_check(ord("S"));
global.immunity = 1

if (global.dash_ctimer == 0) and (global.dash_dtimer == 0) {
	global.dash_dir[0] = D - A
	global.dash_dir[1] = S - W
	
	global.dash_dtimer = global.dash_dur
	global.dash_ctimer = global.dash_coold
}
