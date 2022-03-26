/// @camera code

if (obj_gameHelper.isWindowOpen==true)
{
	current_speed=0;	
}

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




//zoom in/out
if ((mouse_wheel_down() || mouse_wheel_up()) && obj_gameHelper.isWindowOpen==false)
{
	//get the zoom level rate based on the mouse wheel up or down value
	zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), zoom_min, zoom_max);

	//set the camera size based on the zoom level rate
	var new_w = lerp(camera_width, zoom_level * default_zoom_width, zoom_rate);
	var new_h = lerp(camera_height, zoom_level * default_zoom_height, zoom_rate);
	camera_set_view_size(view_camera[0], new_w, new_h);
	
	//center camera
	//var vpos_x = camera_get_view_x(view_camera[0]);
	//var vpos_y = camera_get_view_y(view_camera[0]);
	//var new_x = lerp(vpos_x,vpos_x+(camera_width - zoom_level * default_zoom_width)/2, zoom_rate);
	//var new_y = lerp(vpos_y,vpos_y+(camera_height - zoom_level * default_zoom_height)/2, zoom_rate);

}

function increasecameramovespeed()
{
	if (current_speed < max_speed)
	{
		current_speed += speed_interval;
	}
}