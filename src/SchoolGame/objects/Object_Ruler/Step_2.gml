/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if global.right_weapon{
	x = Object_MainHero.x + global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}
else{
	x = Object_MainHero.x - global.hand_diff[0] 
	y = Object_MainHero.y + global.hand_diff[1]
}
