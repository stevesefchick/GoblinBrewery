///@description create a flavor grid used for malt profiling
function CreateMaltFlavorGrid(){

	ds_malt_flavor_grid=ds_grid_create(10,10);
	
	//TODO: Add grid locations here based on malt used
	
	show_debug_message("width:" + string(ds_grid_width(ds_malt_flavor_grid)));
	show_debug_message("height:" + string(ds_grid_height(ds_malt_flavor_grid)));
	show_debug_message("Malt Flavor Grid Generated!");
}