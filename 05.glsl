// https://thebookofshaders.com/glossary/?search=texture2D

precision mediump float;

uniform sampler2D u_texture_0;
uniform sampler2D u_texture_1;

uniform vec2 u_resolution;
uniform float u_power;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution.xy;
    vec4 color0=texture2D(u_texture_0,st);
    vec4 color1=texture2D(u_texture_1,st);
    
    vec4 cutoff=vec4(vec3(step(u_power,st.x)),1.);
    vec4 color=color0;
    
    if(cutoff.x>u_power){
        color=color1;
    }
    
    gl_FragColor=color;
}