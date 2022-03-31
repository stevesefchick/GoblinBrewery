// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WorkerNothingAlarm(worker_inst){

	if (worker_inst.current_worker_state == worker_state.Idle)
	{
		worker_inst.current_worker_state=worker_state.Wandering;
		worker_inst.wander_destination[0] = worker_inst.x + random_range(-100,100);
		worker_inst.wander_destination[1] = worker_inst.y + random_range(-100,100);
	
		if (worker_inst.wander_destination[0] < x)
		{
			worker_inst.image_xscale=-1;	
		}
		else
		{
			worker_inst.image_xscale=1;
		}
	
	
		worker_inst.alarm[0] = room_speed * random_range(1,4);
	}
	else if (worker_inst.current_worker_state == worker_state.Wandering)
	{
		worker_inst.current_worker_state=worker_state.Idle;
		alarm[0] = room_speed * random_range(1,2);
	}

}