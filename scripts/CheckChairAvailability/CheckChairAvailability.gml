
function CheckChairAvailability(f_name,grid_x,grid_y,i_grid){

	var inst_id=0;
	
	//left
	if (i_grid[# grid_x,grid_y] !=0)
	{
		inst_id= i_grid[# grid_x,grid_y];
	}
	/*
	else if (cell_l !=0)
	{
	}
	else if (cell_l !=0)
	{
	}
	else if (cell_l !=0)
	{
	}
	*/
	
	//no tables nearby
	if (inst_id==0)
	{
		show_debug_message("no tables nearby");
		return false;	
	}
	else
	{
	
		var this_inst = instance_find(obj_furniture,inst_id);
	
		if (this_inst.furnitureName == "table")
		{
			show_debug_message("table found!");
			return true;
		}
		else
		{
			show_debug_message("this object isn't a table...");
			return false;	
		}
	}
	
}