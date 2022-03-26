///@description places furniture in the world
function PlaceFurniture(x_loc,y_loc,f_name){
	
	var grid_x = x_loc div 64;
	var grid_y = y_loc div 64;

	//get placed furniture grid
	var i_grid = obj_furniture_helper.ds_placed_furniture_grid;
	//get cell to check for existing furniture
	var cell = i_grid[# grid_x,grid_y];
	
	if (cell == 0 && obj_gameHelper.isWindowOpen == false)
	{
		var inst = instance_create_layer(x_loc,y_loc,"Instances",obj_furniture);
		i_grid[# grid_x,grid_y] = inst;

		with(inst){
			//assign name
			furnitureName=f_name;
			furnitureCost= obj_furniture_helper.ds_furniture_properties[# 3,furnitureType.chair];
			
			show_debug_message("furniture placed at x="+string(grid_x) + " y=" + string(grid_y));
		}	
	}
	else if (obj_gameHelper.isWindowOpen==true)
	{
		show_debug_message("A window is open!");
	}
	else if (cell != 0)
	{
		show_debug_message("something is here already!");	
	}
}