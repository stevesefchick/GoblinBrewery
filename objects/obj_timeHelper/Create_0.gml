//main time variables
time_day=1;
time_hour=0;
time_minute=0;
time_minute_for_ui=0;
time_hour_for_ui=0;

//end of / start of day variables
start_hour=6;
end_hour = 22;

//time settings
//determines speed of time movement
enum time_settings { pause, slow, normal, fast }
//determines the state of the time that is moving
enum time_state {running, end_of_day, start_of_day}
current_speed_setting = time_settings.normal;
current_time_state = time_state.running;

//time delay
max_time_delay=5;
current_time_delay=max_time_delay;

//shader stuff
time_of_day_uniform_handle = shader_get_uniform(timeOfDayShader,"new_color");
//color used to draw on the shader
time_of_day_color=[1.0,1.0,1.0,1.0];