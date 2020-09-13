#ifdef GL_ES
precision mediump float;
#endif

uniform sampler2D u_texture_0;

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
    vec2 st=gl_FragCoord.xy/u_resolution.xy;
    vec4 color=vec4(st.x,st.y,0.,1.);
    
    color=texture2D(u_texture_0,st);
    
    gl_FragColor=color;
}
