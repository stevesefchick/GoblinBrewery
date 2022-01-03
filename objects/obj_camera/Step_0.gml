/// @camera code



//directional movement of camera
if (keyboard_check(vk_left)){
	x -= current_speed;	
	show_debug_message("left" + string(x));
	increasecameramovespeed();
}
else if (keyboard_check(vk_right)){
	x += current_speed;	
	show_debug_message("right" + string(x));
	increasecameramovespeed();
}
else if (keyboard_check(vk_down)){
	y += current_speed;
	show_debug_message("down" + string(y));
	increasecameramovespeed();
}
else if (keyboard_check(vk_up)){
	y -= current_speed;
	show_debug_message("up" + string(y));
	increasecameramovespeed();
}
else {
	current_speed=min_speed;
}




function increasecameramovespeed()
{
	if (current_speed < max_speed)
	{
		current_speed += speed_interval;
	}
}