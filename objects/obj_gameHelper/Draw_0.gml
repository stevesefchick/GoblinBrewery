/// @description 

//draw debug grid
var w = roomWidth div cellSize;
var h = roomHeight div cellSize;
var xx=0;
var yy=0;

repeat(w){
	draw_line_color(xx,0,xx,roomHeight, c_white, c_white);
	xx+=cellSize;
}

repeat(h){
	draw_line_color(0,yy,roomWidth,yy, c_white, c_white);
	yy+=cellSize;
}

show_debug_message("game helper draw code running");