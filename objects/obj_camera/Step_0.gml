/// @camera code



//directional movement of camera
if (keyboard_check(vk_left)){
	x -= 1;	
	show_debug_message("left" + string(x));
}
if (keyboard_check(vk_right)){
	x += 1;	
	show_debug_message("right" + string(x));
}
if (keyboard_check(vk_down)){
	y += 1;
	show_debug_message("down" + string(y));
}
if (keyboard_check(vk_up)){
	y -= 1;
	show_debug_message("up" + string(y));
}