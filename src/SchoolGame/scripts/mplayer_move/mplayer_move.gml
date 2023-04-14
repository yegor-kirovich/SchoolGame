// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function mplayer_move(spd){
	var A = keyboard_check(ord("A"));
	var D = keyboard_check(ord("D"));
	var W = keyboard_check(ord("W"));
	var S = keyboard_check(ord("S"));
	
	var dir = point_direction(0, 0, D - A, S - W)
	var xadd = lengthdir_x(spd, dir)
	var yadd = lengthdir_y(spd, dir)
		
	if (global.dash_ctimer > 0)
		global.dash_ctimer--
	
	if (global.dash_dtimer > 0) {
		
		if !place_meeting(x + global.dash_dir[0] * global.dash_spd, y, Object_Wall){
			x += global.dash_dir[0] * global.dash_spd
		}else{
			while (!place_meeting(x + global.dash_dir[0] * global.dash_spd, y, Object_Wall)) x += sign(global.dash_dir[0] * global.dash_spd)
		}
		
		if !place_meeting(x, y + global.dash_dir[1] * global.dash_spd, Object_Wall){
			y += global.dash_dir[1] * global.dash_spd	
		}
		else{
			while (!place_meeting(x, y + sign(global.dash_dir[1] * global.dash_spd), Object_Wall)) y += sign(global.dash_dir[1] * global.dash_spd)
		}
		global.dash_dtimer--
	}
	else if D - A != 0 or S - W != 0{
		if !place_meeting(x + xadd, y, Object_Wall){
			x += xadd
		} 
		else{
			while (!place_meeting(x + sign(xadd), y, Object_Wall)) x += sign(xadd)
		}
		
		if !place_meeting(x, y + yadd, Object_Wall){
			y += yadd	
		}
		else{
			while (!place_meeting(x, y + sign(yadd), Object_Wall)) y += sign(yadd)
		}
	}

}
