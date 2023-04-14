/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if(timer == 0) 
	instance_destroy(id, 0)
else
	timer--
	
	
var _list = ds_list_create();
var _num = collision_rectangle_list(x + 190, y, x + sprite_width, y + sprite_height, Object_EnemyHard, false, true, _list, false);
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        _list[| i].enemy_hp--
    }
}
ds_list_destroy(_list);