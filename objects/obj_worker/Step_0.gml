/// @description goblin step event

//check if the time is paused and stop animation is so
if (obj_timeHelper.current_speed_setting == time_settings.pause)
{
	image_speed=0;
	//add 1 to the alarm to keep it living
	alarm[0]+=1;
}
else
{
	image_speed=1;	
}





//state management
if (current_worker_state == worker_state.Idle)
{
	sprite_index=spr_goblin_idle;	
}
else if (current_worker_state == worker_state.Wandering && obj_timeHelper.current_speed_setting != time_settings.pause)
{
	sprite_index = spr_goblin_move;
	
	//movement
	WorkerWander(self);
	
}
else if (current_worker_state == worker_state.MoveTowardsTrash && obj_timeHelper.current_speed_setting != time_settings.pause)
{
	sprite_index = spr_goblin_move;
	WorkerMoveTowardsTrash(self);
}
depth = -y;

