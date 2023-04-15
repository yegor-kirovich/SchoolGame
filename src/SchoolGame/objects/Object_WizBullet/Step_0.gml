/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if !place_meeting(x + speediex, y, Object_Wall){
	x += speediex
}else{
	instance_destroy(id, 0)
}
		
if !place_meeting(x, y + speediey, Object_Wall){
	y += speediey
}
else{
	instance_destroy(id, 0)
}

if(!global.immunity and collision_rectangle(x, y, x + sprite_width, y + sprite_height, Object_MainHero, 0, 1)){
	global.Herohp--
	instance_destroy(id, 0)
}
		