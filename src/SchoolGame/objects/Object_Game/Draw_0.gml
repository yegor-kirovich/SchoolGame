/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(global.isPaused){
	surface_set_target(application_surface)
		if(surface_exists(paused_surf)) {	
			draw_surface(paused_surf, global.vx, global.vy)
		}else{
			paused_surf = surface_create(w, h)
			buffer_set_surface(paused_surf_buff, paused_surf, 0)
		}
	surface_reset_target()
	
}

///
///

if global.ShopColl == 1 and Pausid == 1{
	surface_set_target(application_surface)
	if(surface_exists(weapon_surf)) {		
		draw_surface(weapon_surf, global.vx, global.vy)
	}else{
		weapon_surf = surface_create(w, h)
		buffer_set_surface(paused_surf_buff, weapon_surf, 0)
	}
	surface_reset_target()
}

if (instance_exists(Object_Ruler))
	draw_text(Object_MainHero.x + 50, Object_MainHero.y + 50, Object_Ruler.plusik)
if (instance_exists(Object_Ruler))
	draw_text(Object_MainHero.x + 50, Object_MainHero.y + 70, Object_Ruler.image_angle)
if (instance_exists(Object_Enemy)){
	draw_text(Object_MainHero.x + 50, Object_MainHero.y + 90, Object_Enemy.a)
	draw_text(Object_MainHero.x + 50, Object_MainHero.y + 110, sin(Object_Enemy.a))
	draw_text(Object_MainHero.x + 50, Object_MainHero.y + 130, cos(Object_Enemy.a))
}
