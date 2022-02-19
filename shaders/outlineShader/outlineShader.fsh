//
// Draw border around sprites
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texture_Pixel;
uniform vec4 border_Color;

void main()
{
	//thickness of border
	vec2 thickness = texture_Pixel * 2.0;
	
	//endcolor
	vec4 end_pixel = v_vColour * texture2D (gm_BaseTexture,v_vTexcoord);
	
	if (texture2D(gm_BaseTexture,v_vTexcoord).a <= 0.0)
	{
		float alpha = 0.0;
		alpha = max(alpha,texture2D (gm_BaseTexture,vec2(v_vTexcoord.x - thickness.x,v_vTexcoord.y)).a);
		alpha = max(alpha,texture2D (gm_BaseTexture,vec2(v_vTexcoord.x + thickness.x,v_vTexcoord.y)).a);
		alpha = max(alpha,texture2D (gm_BaseTexture,vec2(v_vTexcoord.x,v_vTexcoord.y + thickness.y)).a);
		alpha = max(alpha,texture2D (gm_BaseTexture,vec2(v_vTexcoord.x,v_vTexcoord.y - thickness.y)).a);
		
		if (alpha != 0.0)
		{
			//end_pixel=vec4(0.0,0.0,0.0,1.0);
			end_pixel=border_Color;
		}
	}
	
	
	gl_FragColor=end_pixel;
	
}
