/// @description creation script

depth=-y


//shader stuff
uniform_handle = shader_get_uniform(outlineShader,"texture_Pixel");
border_color = ChangeBorderColorToBlack();
border_color_uniform_handle = shader_get_uniform(outlineShader,"border_Color");
