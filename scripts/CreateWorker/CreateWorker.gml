///@description create new worker
function CreateWorker(x_loc,y_loc){

	var new_worker = instance_create_layer(x_loc,y_loc,"Instances",obj_worker);
	with(new_worker){
		AssignWorkerAssignment(new_worker,"nothing");
	
	}
	
	show_debug_message("New worker created! ");
}