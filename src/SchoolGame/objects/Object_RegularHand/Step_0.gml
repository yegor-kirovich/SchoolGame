mplayer_move(global.player_speed)
a = point_direction(Object_Ruler.x, Object_Ruler.y, mouse_x, mouse_y)
depth = Object_MainHero.depth + (a > 0 and a < 180)