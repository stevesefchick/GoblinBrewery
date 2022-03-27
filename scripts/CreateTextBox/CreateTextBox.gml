//creates a textbox at a location
function CreateTextBox(x_loc,y_loc,x_size,y_size,textbox_type){

	if (obj_gameHelper.isWindowOpen==false)
	{
		//TODO: Create a script for title to keep it outside of here

		
		var inst = instance_create_layer(x_loc,y_loc,"Instances",obj_textbox);
		with(inst){
			//location stuff
			textbox_location_x=GetCameraOffsetX(x_loc,0);
			textbox_location_y=GetCameraOffsetY(y_loc,0);
			textbox_width=x_size;
			textbox_width_scale=GetTextBoxLengthScale(x_size);
			textbox_height=y_size;
			textbox_height_scale=GetTextBoxLengthScale(y_size);
			//title and text stuff
			textbox_title=textbox_type;
		}
		
		obj_gameHelper.isWindowOpen=true;
	
		show_debug_message("textbox created!");
	}
	else
	{
		show_debug_message("textbox is already open");	
	}
	
}