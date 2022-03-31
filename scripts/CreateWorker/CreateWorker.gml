///@description create new worker
function CreateWorker(x_loc,y_loc){

	var new_worker = instance_create_layer(x_loc,y_loc,"Instances",obj_worker);
	with(new_worker){
		//debug, should default to nothing probably
		rand = random_range(1,2);
		if (rand==1)
		{
			AssignWorkerAssignment(new_worker,"nothing");
		}
		else if (rand==2)
		{
			AssignWorkerAssignment(new_worker,"cleanup");
		}
	}
	
	show_debug_message("New worker created! ");
}