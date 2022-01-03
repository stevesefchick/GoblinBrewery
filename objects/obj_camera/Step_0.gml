/// @camera code


if (keyboard_check(vk_left)){
	x -= 1;	
	show_debug_message("left" + string(x));
}
if (keyboard_check(vk_right)){
	x += 1;	
	show_debug_message("right" + string(x));
}