/// @description State delay changes (Idle/Wandering)

if (current_worker_state == worker_state.Idle)
{
	current_worker_state=worker_state.Wandering;
	wander_destination[0] = x + random_range(-100,100);
	wander_destination[1] = y + random_range(-100,100);
	
	if (wander_destination[0] < x)
	{
		image_xscale=-1;	
	}
	else
	{
		image_xscale=1;
	}
	
	
	alarm[0] = room_speed * random_range(1,4);
}
else if (current_worker_state == worker_state.Wandering)
{
	current_worker_state=worker_state.Idle;
	alarm[0] = room_speed * random_range(1,2);
}