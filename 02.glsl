// https://thebookofshaders.com/glossary/?search=vec3
// https://thebookofshaders.com/glossary/?search=vec4
// https://thebookofshaders.com/glossary/?search=step

precision mediump float;

uniform vec2 u_resolution;
uniform float u_time;

void main(){
  vec2 st=gl_FragCoord.xy/u_resolution;
  vec3 color=vec3(step(.5,st.x));
  gl_FragColor=vec4(color,1.);
}