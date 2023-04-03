/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(global.isPaused){
	surface_set_target(application_surface)
	if(surface_exists(paused_surf)) {
		draw_clear_alpha ( c_white , 0 );		
		draw_surface(paused_surf, global.vx, global.vy)
	}else{
		paused_surf = surface_create(w, h)
		buffer_set_surface(paused_surf_buff, paused_surf, 0)
	}
	surface_reset_target()
	
}

