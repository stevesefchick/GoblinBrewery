//creates a textbox at a location
function CreateTextBox(x_loc,y_loc,x_size,y_size){

	if (obj_gameHelper.isWindowOpen==false)
	{
		var inst = instance_create_layer(x_loc,y_loc,"Instances",obj_textbox);
		with(inst){
		//assign name
		textbox_location_x=x_loc;
		textbox_location_y=y_loc;
		textbox_width=x_size;
		textbox_width_scale=GetTextBoxLengthScale(x_size);
		textbox_height=y_size;
		textbox_height_scale=GetTextBoxLengthScale(y_size);
		}
		
		obj_gameHelper.isWindowOpen=true;
	
		show_debug_message("textbox created!");
	}
	else
	{
		show_debug_message("textbox is already open");	
	}
	
}