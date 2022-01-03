/// @camera code



//directional movement of camera
if (keyboard_check(vk_left) && x > camera_left_bounds){
	x -= current_speed;	
	show_debug_message("left" + string(x));
	increasecameramovespeed();
}
else if (keyboard_check(vk_right) && x < camera_right_bounds){
	x += current_speed;	
	show_debug_message("right" + string(x));
	increasecameramovespeed();
}
else if (keyboard_check(vk_down) && y < camera_bottom_bounds ){
	y += current_speed;
	show_debug_message("down" + string(y));
	increasecameramovespeed();
}
else if (keyboard_check(vk_up) && y > camera_top_bounds){
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