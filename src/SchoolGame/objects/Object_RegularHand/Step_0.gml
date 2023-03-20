if global.right_weapon{
	x = Object_MainHero.x - global.hand_center_distance_x
	y = Object_MainHero.y + 30
}
else{
	x = Object_MainHero.x + global.hand_center_distance_x
	y = Object_MainHero.y + 30
}
a = point_direction(Object_Ruler.x, Object_Ruler.y, mouse_x, mouse_y)
depth = Object_MainHero.depth + (a > 0 and a < 180)