///@description Give Assignments to a worker based on their instance
function AssignWorkerAssignment(inst,assignment){

	if (assignment=="nothing")
	{
		inst.current_worker_assignment=worker_assignment.Nothing;	
		show_debug_message(inst.worker_name + " is doing nothing.");
	}
	else if (assignment=="cleanup")
	{
		inst.current_worker_assignment=worker_assignment.Cleanup;	
		show_debug_message(inst.worker_name + " is cleaning up trash.");
	}
}