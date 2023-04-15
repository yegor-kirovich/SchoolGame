/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if not global.ShopColl and not global.isPaused{
	instance_activate_all();
		
	if(surface_exists(weapon_surf))
		surface_free(weapon_surf)
			
	if(buffer_exists(paused_surf_buff))
		buffer_delete(paused_surf_buff)
	
	Pausid = 0
}
else if (global.ShopColl and not Pausid){
	instance_deactivate_all(true)
	instance_activate_object(Object_Game)
	instance_activate_object(Object_ChooseWeapon)
	instance_activate_object(Object_ChWeBlock)
	instance_activate_object(Object_ChooseWeaponClose)
	instance_activate_object(Object_TalantGUI)
		
	if(surface_exists(weapon_surf))
		surface_free(weapon_surf)
		
	weapon_surf = surface_create(w, h)
			
	surface_set_target(weapon_surf)
		draw_clear_alpha ( c_white , 0 );
		draw_surface(application_surface, 0, 0)
	surface_reset_target()
			
	if(buffer_exists(paused_surf_buff))
		buffer_delete(paused_surf_buff)
		
	Pausid = 1
	
	paused_surf_buff = buffer_create(w * h * 4, buffer_fixed, 1)
	buffer_get_surface(paused_surf_buff, weapon_surf, 0)
}


