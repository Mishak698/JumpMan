/// @description fullscreen

if (keyboard_check_released(ord("F"))) {
	if window_get_fullscreen() {
		window_set_fullscreen(false);
		alarm[1]=6
	} else {
		window_set_fullscreen(true);
		alarm[1]=6
	}
}