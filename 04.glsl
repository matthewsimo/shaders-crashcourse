// https://thebookofshaders.com/glossary/?search=texture2D

precision mediump float;

uniform sampler2D u_texture_0;

uniform vec2 u_resolution;
uniform float u_power;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution.xy;
    vec4 color=texture2D(u_texture_0,st);
    
    color=vec4(color);
    
    gl_FragColor=color;
}
