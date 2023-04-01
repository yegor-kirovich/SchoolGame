/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if keyboard_check_pressed(ord("P")){
    global.isPaused = !global.isPaused;
	
    if global.isPaused == 0 {
        instance_activate_all();
    }else{
		if(!surface_exists(paused_surf))
			paused_surf = surface_create(room_width, room_height)
		surface_copy(paused_surf, 0, 0, application_surface)
		instance_deactivate_all(true)
	}
}
