shader_set(timeOfDayShader);
shader_set_uniform_f_array(time_of_day_uniform_handle,time_of_day_color);

draw_surface(application_surface,0,0);
shader_reset();