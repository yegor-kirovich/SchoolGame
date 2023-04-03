/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
global.CameraWidth = 960
global.CameraHeight = 540

global.isPaused = 0
paused_surf = -1
paused_surf_buff = -1
w = 1920
h = 1080
global.w = w
global.h = h

window_set_fullscreen(true)
surface_resize(application_surface, w, h)
display_set_gui_size(w, h)
window_set_size(w, h)