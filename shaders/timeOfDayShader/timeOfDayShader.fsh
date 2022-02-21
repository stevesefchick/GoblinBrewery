//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 new_color;


void main()
{
	vec3 outColor = texture2D( gm_BaseTexture, v_vTexcoord).rgb;
    gl_FragColor = vec4(outColor * new_color,1.0);
}
