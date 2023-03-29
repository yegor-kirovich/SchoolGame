// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function normalize(a){
	ix = a[0]
	iy = a[1]
	
	if (ix != 0) or (iy != 0){
		var factor = 1 / (sqrt(ix * ix + iy * iy));
		ix = ix * factor;
		iy = iy * factor;
	}
	
	return a
}
