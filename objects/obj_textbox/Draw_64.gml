/// @description 




//top
draw_sprite_ext(ui_window,0,x-64,y,1,1,0,c_white,1);
draw_sprite_ext(ui_window,1,x,y,textbox_width_scale,1,0,c_white,1);
draw_sprite_ext(ui_window,2,x+textbox_width-64,y,1,1,0,c_white,1);
//middle
draw_sprite_ext(ui_window,3,x-64,y+64,1,textbox_height_scale,0,c_white,1);
draw_sprite_ext(ui_window,4,x,y+64,textbox_width_scale,textbox_height_scale,0,c_white,1);
draw_sprite_ext(ui_window,5,x+textbox_width-64,y+64,1,textbox_height_scale,0,c_white,1);
//bottom
draw_sprite_ext(ui_window,6,x-64,y+textbox_height,1,1,0,c_white,1);
draw_sprite_ext(ui_window,7,x,y+textbox_height,textbox_width_scale,1,0,c_white,1);
draw_sprite_ext(ui_window,8,x+textbox_width-64,y+textbox_height,1,1,0,c_white,1);

//draw title
draw_set_font(fnt_lantern);
draw_text_scribble(x + (textbox_width/4),y+25,"[c_white][wheel]"+textbox_title);
		
if (textbox_title=="Assignments")
{
	DrawWorkerAssignmentWindow();	
}