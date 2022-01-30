///@description places furniture in the world
function PlaceFurniture(x_loc,y_loc,f_name){

	var inst = instance_create_layer(x_loc,y_loc,"Instances",obj_furniture);
	
	with(inst){
		//assign name
		furnitureName=f_name;
		furnitureCost= obj_furniture_helper.ds_furniture_properties[# 3,furnitureType.chair];
		show_debug_message(furnitureCost);
	}	
}