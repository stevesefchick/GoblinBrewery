function WorkerMoveTowardsTrash(worker_inst){

   if mp_linear_step(worker_inst.wander_destination[0], worker_inst.wander_destination[1], worker_inst.walk_movement_speed,0)
   {
	   //change to cleanup
	   worker_inst.alarm[0] = worker_inst.worker_time_to_cleanup;
		worker_inst.current_worker_state = worker_state.CleanupTrash;
   }
   
   //check if obj still exists
   	var closest_trash = instance_nearest(worker_inst.x,worker_inst.y,obj_trash);
	if (closest_trash == undefined)
	{
		worker_inst.current_worker_state=worker_state.Idle;
	}
	else
	{
		worker_inst.alarm[0] -=1;	
	}
   
   //check for collisions with walls,etc
	if (place_meeting(worker_inst.x,worker_inst.y,obj_collision))
	{
		//move back to previous x,y and change state to idle
		worker_inst.x = worker_inst.xprevious;
		worker_inst.y=worker_inst.yprevious;
		worker_inst.current_worker_state=worker_state.Idle;
	}
}