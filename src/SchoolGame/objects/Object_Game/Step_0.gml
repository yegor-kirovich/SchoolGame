/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if keyboard_check_pressed(ord("P")){
    global.isPaused = !global.isPaused;
	
    if global.isPaused == 0 {
		instance_activate_all();
		
		camera_set_view_size(view_camera[0], global.CameraWidth, global.CameraHeight)
		
		if(surface_exists(paused_surf))
			surface_free(paused_surf)
			
		if(buffer_exists(paused_surf_buff))
			buffer_delete(paused_surf_buff)
    }else{
		instance_deactivate_all(true)
		instance_activate_object(Object_GUIManager)
		instance_activate_object(Object_ChooseWeapon)
		instance_activate_object(Object_ChWeBlock)
		instance_activate_object(Object_ChooseWeaponClose)
		
		camera_set_view_size(view_camera[0], w, h)
		
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