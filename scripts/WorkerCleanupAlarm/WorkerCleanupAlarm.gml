// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WorkerCleanupAlarm(worker_inst){
	
	if (worker_inst.current_worker_state == worker_state.Idle)
	{
		//check for nearby trash
		var closest_trash = instance_nearest(worker_inst.x,worker_inst.y,obj_trash);
		show_debug_message(closest_trash);
		
		//if no trash, wander around
		if (closest_trash == undefined)
		{
			worker_inst.current_worker_state=worker_state.Wandering;
			worker_inst.wander_destination[0] = worker_inst.x + random_range(-100,100);
			worker_inst.wander_destination[1] = worker_inst.y + random_range(-100,100);
	

			worker_inst.alarm[0] = room_speed * random_range(1,4);		
		}
		//if there is trash, head towards it
		else
		{
			worker_inst.current_worker_state=worker_state.MoveTowardsTrash;
			worker_inst.wander_destination[0] = closest_trash.x;
			worker_inst.wander_destination[1] = closest_trash.y
			//get rid of this?
			worker_inst.alarm[0] = room_speed * random_range(1,4);
		}
		
		
		//face the right direction depending on x destination
		if (worker_inst.wander_destination[0] < x)
		{
			worker_inst.image_xscale=-1;	
		}
		else
		{
			worker_inst.image_xscale=1;
		}
	

	}
	else if (worker_inst.current_worker_state == worker_state.MoveTowardsTrash)
	{
		//if trash still exists, continue to move towards it
		
		//if it doesn't, idle
		worker_inst.current_worker_state=worker_state.Idle;
		alarm[0] = room_speed * random_range(1,2);
	}
	else if (worker_inst.current_worker_state == worker_state.CleanupTrash)
	{
		//clean up trash until timer is done, based on skill, then return to idle
		worker_inst.current_worker_state=worker_state.Idle;
		alarm[0] = room_speed * random_range(1,2);
	}
	else if (worker_inst.current_worker_state == worker_state.Wandering)
	{
		//check for nearby trash
		
		//if no trash, chill
		worker_inst.current_worker_state=worker_state.Idle;
		alarm[0] = room_speed * random_range(1,2);
	}


}