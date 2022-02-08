/// @description 


//create instance
if (mouse_check_button_pressed(mb_left)){
	//TODO: Cleanup to use tile size
	var xx = mouse_x - (mouse_x % 64) + 32;
	var yy = mouse_y - (mouse_y % 64) + 32;
	
	//check that you are inside
	var layer_id = layer_get_id("Inside");
	var map_id = layer_tilemap_get_id(layer_id);
	var loc_data = tilemap_get_at_pixel(map_id,xx,yy);
	
	//don't place anything if you are not inside
	if (loc_data == 0)
	{
		show_debug_message("nothing here");	
	}
	//you are inside, you can place furniture
	else if (loc_data == 1)
	{
		//place furniture
		PlaceFurniture(xx,yy,"chair");
	}


}
