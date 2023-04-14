/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if not global.ShopColl{
    global.isPaused = !global.isPaused;
	
    if global.isPaused == 0 {
		instance_activate_all();
		
		if(surface_exists(paused_surf))
			surface_free(paused_surf)
			
		if(buffer_exists(paused_surf_buff))
			buffer_delete(paused_surf_buff)
    }else{
		instance_deactivate_all(true)
		instance_activate_object(Object_Game)
		
		if(surface_exists(paused_surf))
			surface_free(paused_surf)
		
		paused_surf = surface_create(w, h)
			
		surface_set_target(paused_surf)
			draw_clear_alpha ( c_white , 0 );
			draw_surface(application_surface, 0, 0)
		surface_reset_target()
			
		if(buffer_exists(paused_surf_buff))
			buffer_delete(paused_surf_buff)
			
		paused_surf_buff = buffer_create(w * h * 4, buffer_fixed, 1)
		buffer_get_surface(paused_surf_buff, paused_surf, 0)
	}
}