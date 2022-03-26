/// @description 
//top
draw_sprite_ext(ui_window,0,textbox_location_x-64,textbox_location_y,1,1,0,c_white,1);
draw_sprite_ext(ui_window,1,textbox_location_x,textbox_location_y,textbox_width_scale,1,0,c_white,1);
draw_sprite_ext(ui_window,2,textbox_location_x+textbox_width-64,textbox_location_y,1,1,0,c_white,1);
//middle
draw_sprite_ext(ui_window,3,textbox_location_x-64,textbox_location_y+64,1,textbox_width_scale,0,c_white,1);
draw_sprite_ext(ui_window,4,textbox_location_x,textbox_location_y+64,textbox_width_scale,textbox_width_scale,0,c_white,1);
draw_sprite_ext(ui_window,5,textbox_location_x+textbox_width-64,textbox_location_y+64,1,textbox_width_scale,0,c_white,1);
//bottom
draw_sprite_ext(ui_window,6,textbox_location_x-64,textbox_location_y+textbox_height,1,1,0,c_white,1);
draw_sprite_ext(ui_window,7,textbox_location_x,textbox_location_y+textbox_height,textbox_width_scale,1,0,c_white,1);
draw_sprite_ext(ui_window,8,textbox_location_x+textbox_width-64,textbox_location_y+textbox_height,1,1,0,c_white,1);