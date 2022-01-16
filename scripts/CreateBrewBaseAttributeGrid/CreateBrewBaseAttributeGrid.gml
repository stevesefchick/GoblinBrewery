// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateBrewBaseAttributeGrid(){

	//all fields in the grid and their positions
	var base_brew_name=0;
	var base_brew_base_cost=1;
	var base_brew_bitter_range=2;
	var base_brew_sweet_range=3;
	var base_brew_bread_range=4;
	var base_brew_strong_range=5;
	var base_brew_sour_range=6;
	var base_brew_quality_min=7;
	var base_brew_sprite=8;
	//TODO: Create functions for these so they can be switched if needed
	
	ds_brew_base_attributes = ds_grid_create(9,1);
	
	for (var counter=0;counter<ds_grid_height(ds_brew_base_attributes);counter++)
	{
		if (counter==0)
		{
			ds_grid_set(ds_brew_base_attributes,base_brew_name,counter,"ale");
			ds_grid_set(ds_brew_base_attributes,base_brew_base_cost,counter,100);
			ds_grid_set(ds_brew_base_attributes,base_brew_bitter_range,counter,[1,2]);
			ds_grid_set(ds_brew_base_attributes,base_brew_sweet_range,counter,[1,2]);
			ds_grid_set(ds_brew_base_attributes,base_brew_bread_range,counter,[1,2]);
			ds_grid_set(ds_brew_base_attributes,base_brew_strong_range,counter,[1,2]);
			ds_grid_set(ds_brew_base_attributes,base_brew_sour_range,counter,[1,2]);
			ds_grid_set(ds_brew_base_attributes,base_brew_quality_min,counter,0);
			ds_grid_set(ds_brew_base_attributes,base_brew_sprite,counter,undefined);
			
			
			//debug messaging
			/*
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_name,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_base_cost,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_bitter_range,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_sweet_range,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_bread_range,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_strong_range,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_sour_range,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_quality_min,counter));
			show_debug_message(ds_grid_get(ds_brew_base_attributes,base_brew_sprite,counter));
			*/

		}
	}
	
	GetBrewBaseInfo("ale");
}