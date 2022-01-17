///@description returns brew attributes based on a name
///@arg1 brew_name
function GetBrewBaseInfo(brew_name){
	var y_val=ds_grid_value_y(ds_brew_base_attributes,0,0,0,ds_grid_height(ds_brew_base_attributes),brew_name);

	//return all values based on the y_val for that name
	for (var x_counter=0;x_counter<ds_grid_width(ds_brew_base_attributes);x_counter++)
	{
		show_debug_message(ds_grid_get(ds_brew_base_attributes,x_counter,y_val));
	}
}


function GetBrewBaseRow(brew_name){
	var y_val=ds_grid_value_y(ds_brew_base_attributes,0,0,0,ds_grid_height(ds_brew_base_attributes),brew_name);
	show_debug_message(y_val);
	show_debug_message(ds_grid_get(ds_brew_base_attributes,0,y_val));
	
	return y_val;
}

function GetBrewName(y_val){

	return (ds_grid_get(ds_brew_base_attributes,0,y_val));
	
}

function IsBrewBitterValueInRange(y_val,bittervalue)
{
	var bitter_range = ds_grid_get(ds_brew_base_attributes,2,y_val);
	
	if (bittervalue >= bitter_range[0] && bittervalue < bitter_range[1])
	{
		return true;	
	}
	else
	{
		return false;	
	}
}

function IsBrewBreadValueInRange(y_val,breadvalue)
{
	var bread_range = ds_grid_get(ds_brew_base_attributes,2,y_val);
	
	if (breadvalue >= bread_range[0] && breadvalue < bread_range[1])
	{
		return true;	
	}
	else
	{
		return false;	
	}
}