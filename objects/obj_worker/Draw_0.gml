shader_set(outlineShader);

//get the texture and texels for the sprite to pass to the shader
var texture = sprite_get_texture(sprite_index,image_index);
var texture_width = texture_get_texel_width(texture);
var texture_height = texture_get_texel_height(texture);

//set the float variable to the shader
shader_set_uniform_f(uniform_handle,texture_width,texture_height);
shader_set_uniform_f_array(border_color_uniform_handle,border_color);


//draw
draw_self();

shader_reset();