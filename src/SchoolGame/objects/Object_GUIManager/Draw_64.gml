/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var w = 55 * global.hp

if(w >= 277){
	w = 277
}


draw_sprite_part(Sprite_HP, 2, 0, 0, w, 35, x + 135, y + 58)
draw_sprite(Sprite_HPBarEdge, 1, x, y)

draw_text(x, y + 100, Object_Ruler.image_angle)