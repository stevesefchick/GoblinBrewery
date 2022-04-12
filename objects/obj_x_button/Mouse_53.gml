//destroys the instance
if mouse_check_button_pressed(mb_left) {
	//get absolute value
	mouse_device_x = device_mouse_x_to_gui(0);
	mouse_device_y = device_mouse_y_to_gui(0);

    
	
	if collision_point(mouse_device_x, mouse_device_y, obj_x_button, true, false) {
        show_debug_message("destroying instances");
		instance_destroy(textbox_ref_id);
		instance_destroy(self);
    }
}