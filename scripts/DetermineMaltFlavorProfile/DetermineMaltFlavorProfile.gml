///@description script for identifying the malt flavor profile using the grid (wip)
///@arg breadvalue
///@arg strengthvalue
function DetermineMaltFlavorProfile(breadvalue,strengthvalue){

	var gridvalue = ds_grid_get(ds_malt_flavor_grid,breadvalue,strengthvalue);
	show_debug_message("flavor profile selected: " + string(gridvalue));
}