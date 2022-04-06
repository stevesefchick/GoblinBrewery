//destroys the instance
if mouse_check_button_pressed(mb_left) {
    if collision_point(mouse_x, mouse_y, obj_x_button, true, false) { //Arguments are (x, y, obj, prec, notme)
        show_debug_message("destroying instances");
		instance_destroy(textbox_ref_id);
		instance_destroy(self);
    }
}