
//time is moving
if (current_time_state == time_state.running && current_speed_setting != time_settings.pause)
{
	if (current_time_delay == 0)
	{
		if (time_minute < 60)
		{
			//move forward the minute
			time_minute+=1;
		}
		else 
		{
			//move forward the hour
			time_minute=0;
			time_hour+=1;
			
			show_debug_message("Hour = " + string(time_hour));
		}
		
		//check for end of day
		if (time_hour >= end_hour)
		{
			//end of day triggered
			current_time_state = time_state.end_of_day;
			
			show_debug_message("It's the end of the day!");
		}
		
		//reset time to max time
		current_time_delay=max_time_delay;
	}
	else
	{
		current_time_delay-=1;	
	}
}



//pause and restart time
if (keyboard_check_pressed(vk_enter)){
	if (current_speed_setting == time_settings.normal)
	{
		current_speed_setting = time_settings.pause;
		show_debug_message("paused");
	}
	else if (current_speed_setting == time_settings.pause)
	{
		current_speed_setting = time_settings.normal;
		show_debug_message("unpaused");
	}
}