///@description creation of furniture property grid
function CreateFurniturePropertyGrid(){

	//all fields to be populated
	var furniture_type=0;
	var furniture_name=1;
	var furniture_size=2;
	var furniture_gold_cost=3;

	ds_furniture_properties = ds_grid_create(4,3);
	
	
	for (var counter=0;counter<ds_grid_height(ds_furniture_properties);counter++)
	{
		//chair
		if (counter==0)
		{
			ds_grid_set(ds_furniture_properties,furniture_type,counter,counter);
			ds_grid_set(ds_furniture_properties,furniture_name,counter,"chair");
			ds_grid_set(ds_furniture_properties,furniture_size,counter,1);
			ds_grid_set(ds_furniture_properties,furniture_gold_cost,counter,75);
			
			/*
			show_debug_message("furniture properties debug");
			show_debug_message(ds_grid_get(ds_furniture_properties,furniture_type,counter));
			show_debug_message(ds_grid_get(ds_furniture_properties,furniture_name,counter));
			show_debug_message(ds_grid_get(ds_furniture_properties,furniture_size,counter));
			show_debug_message(ds_grid_get(ds_furniture_properties,furniture_gold_cost,counter));
			*/
		}
		//barrel
		else if (counter==1)
		{
			ds_grid_set(ds_furniture_properties,furniture_type,counter,counter);
			ds_grid_set(ds_furniture_properties,furniture_name,counter,"barrel");
			ds_grid_set(ds_furniture_properties,furniture_size,counter,1);
			ds_grid_set(ds_furniture_properties,furniture_gold_cost,counter,25);
		}
		//table
		else if (counter==2)
		{
			ds_grid_set(ds_furniture_properties,furniture_type,counter,counter);
			ds_grid_set(ds_furniture_properties,furniture_name,counter,"table");
			ds_grid_set(ds_furniture_properties,furniture_size,counter,1);
			ds_grid_set(ds_furniture_properties,furniture_gold_cost,counter,150);
		}
	}
	
	show_debug_message("Furniture property grid created!");
	
}