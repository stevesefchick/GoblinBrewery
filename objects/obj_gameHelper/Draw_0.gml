/// @description debug draw code

if (debugMode == true)
{

		//draw debug grid
		var w = roomWidth div cellSize;
		var h = roomHeight div cellSize;
		var xx=0;
		var yy=0;


		//draw soft grid
		draw_set_alpha(0.3);
		repeat(w){
			draw_line_color(xx,0,xx,roomHeight, c_white, c_white);
			xx+=cellSize;
		}

		repeat(h){
			draw_line_color(0,yy,roomWidth,yy, c_white, c_white);
			yy+=cellSize;
		}
		
		var squarePos_x = (mouse_x div cellSize) * cellSize;
		var squarePos_y = (mouse_y div cellSize) * cellSize;
		
		draw_rectangle_colour(squarePos_x, squarePos_y,squarePos_x+cellSize,squarePos_y+cellSize,c_white,c_white,c_white,c_white,false);

		draw_set_alpha(1);

}