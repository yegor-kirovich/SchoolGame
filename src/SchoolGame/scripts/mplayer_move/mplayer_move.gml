// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function mplayer_move(spd){
	var A = keyboard_check(ord("A"));
	var D = keyboard_check(ord("D"));
	var W = keyboard_check(ord("W"));
	var S = keyboard_check(ord("S"));

	var dir = [D - A, S - W]
	dir = normalize(dir)
	
	if (global.dash_ctimer > 0)
		global.dash_ctimer--
	
	if (global.dash_dtimer > 0) {
		x += global.dash_dir[0] * global.dash_spd
		y += global.dash_dir[1] * global.dash_spd
	
		global.dash_dtimer--
	}else{
		x += dir[0] * spd
		y += dir[1] * spd
	}

}
