///@description creates a property and flavor profile grid for all possible ingredients
function CreateIngredientPropertyGrid(){


	//columns, basically
	//all fields to be populated
	var ingredient_name=0;
	var ingredient_type=1;
	var ingredient_cost=2;
	var ingredient_bitter_flavor=3;
	var ingredient_sweet_flavor=4;
	var ingredient_bread_flavor=5;
	var ingredient_strong_flavor=6;
	var ingredient_sour_flavor=7;
	var ingredient_sprite=8;
	
	ds_ingredient_properties = ds_grid_create(9,2);
	
	for (var counter=0;counter<ds_grid_height(ds_ingredient_properties);counter++)
	{
		if (counter==0)
		{
			ds_grid_set(ds_ingredient_properties,ingredient_name,counter,"dirt malt");
			ds_grid_set(ds_ingredient_properties,ingredient_type,counter,"malt");
			ds_grid_set(ds_ingredient_properties,ingredient_cost,counter,55);
			ds_grid_set(ds_ingredient_properties,ingredient_bitter_flavor,counter,3);
			ds_grid_set(ds_ingredient_properties,ingredient_sweet_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_bread_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_strong_flavor,counter,2);
			ds_grid_set(ds_ingredient_properties,ingredient_sour_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_sprite,counter,undefined);
			
			//use for debug
			/*
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_name,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_type,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_cost,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_bitter_flavor,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_sweet_flavor,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_bread_flavor,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_strong_flavor,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_sour_flavor,counter));
			show_debug_message(ds_grid_get(ds_ingredient_properties,ingredient_sprite,counter));
			*/
		}
		else if (counter==1)
		{
			ds_grid_set(ds_ingredient_properties,ingredient_name,counter,"sweet malt");
			ds_grid_set(ds_ingredient_properties,ingredient_type,counter,"malt");
			ds_grid_set(ds_ingredient_properties,ingredient_cost,counter,44);
			ds_grid_set(ds_ingredient_properties,ingredient_bitter_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_sweet_flavor,counter,4);
			ds_grid_set(ds_ingredient_properties,ingredient_bread_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_strong_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_sour_flavor,counter,2);
			ds_grid_set(ds_ingredient_properties,ingredient_sprite,counter,undefined);
		}
		else if (counter==2)
		{
			ds_grid_set(ds_ingredient_properties,ingredient_name,counter,"stink hops");
			ds_grid_set(ds_ingredient_properties,ingredient_type,counter,"hops");
			ds_grid_set(ds_ingredient_properties,ingredient_cost,counter,30);
			ds_grid_set(ds_ingredient_properties,ingredient_bitter_flavor,counter,6);
			ds_grid_set(ds_ingredient_properties,ingredient_sweet_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_bread_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_strong_flavor,counter,3);
			ds_grid_set(ds_ingredient_properties,ingredient_sour_flavor,counter,6);
			ds_grid_set(ds_ingredient_properties,ingredient_sprite,counter,undefined);
		}
		else if (counter==3)
		{
			ds_grid_set(ds_ingredient_properties,ingredient_name,counter,"sugar sprinkles");
			ds_grid_set(ds_ingredient_properties,ingredient_type,counter,"spice");
			ds_grid_set(ds_ingredient_properties,ingredient_cost,counter,10);
			ds_grid_set(ds_ingredient_properties,ingredient_bitter_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_sweet_flavor,counter,2);
			ds_grid_set(ds_ingredient_properties,ingredient_bread_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_strong_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_sour_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_sprite,counter,undefined);
		}
		else if (counter==4)
		{
			ds_grid_set(ds_ingredient_properties,ingredient_name,counter,"fungus flakes");
			ds_grid_set(ds_ingredient_properties,ingredient_type,counter,"yeast");
			ds_grid_set(ds_ingredient_properties,ingredient_cost,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_bitter_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_sweet_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_bread_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_strong_flavor,counter,0);
			ds_grid_set(ds_ingredient_properties,ingredient_sour_flavor,counter,1);
			ds_grid_set(ds_ingredient_properties,ingredient_sprite,counter,undefined);
		}
	}
	
	
	show_debug_message("width:" + string(ds_grid_width(ds_ingredient_properties)));
	show_debug_message("height:" + string(ds_grid_height(ds_ingredient_properties)));
	show_debug_message("Ingredient Property List Created!");

}