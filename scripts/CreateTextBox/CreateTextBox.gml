//creates a textbox at a location
function CreateTextBox(x_loc,y_loc,x_size,y_size,textbox_type,position_absolute){

	if (obj_gameHelper.isWindowOpen==false)
	{
		//TODO: Create a script for title to keep it outside of here

		
		var inst = instance_create_layer(x_loc,y_loc,"Instances",obj_textbox);
		with(inst){

			textbox_width=x_size;
			textbox_width_scale=GetTextBoxLengthScale(x_size);
			textbox_height=y_size;
			textbox_height_scale=GetTextBoxLengthScale(y_size);
			//title and text stuff
			textbox_title=textbox_type;
			
			//create X Button
			var x_inst = instance_create_layer(inst.x+inst.textbox_width-92,inst.y+16,"Instances",obj_x_button);
			with (x_inst)
			{
				
				//figure out depth
				x_inst.depth = inst.depth-1;
				x_inst.textbox_ref_id=inst;	
			}
		}
		
		obj_gameHelper.isWindowOpen=true;
	
		show_debug_message("textbox created!");
	}
	else
	{
		show_debug_message("textbox is already open");	
	}
	
}