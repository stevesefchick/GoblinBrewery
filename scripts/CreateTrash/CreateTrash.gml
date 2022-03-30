// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateTrash(x_loc,y_loc){
	
	var new_trash = instance_create_layer(x_loc,y_loc,"Instances",obj_trash);
	with(new_trash){
		//do stuff
	
	}
	
	show_debug_message("Trash has been created!");
}