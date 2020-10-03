// https://thebookofshaders.com/glossary/?search=vec3
// https://thebookofshaders.com/glossary/?search=vec4
// https://thebookofshaders.com/glossary/?search=sin
// https://thebookofshaders.com/glossary/?search=mix

precision mediump float;

uniform float u_time;

// Normalize value from "-1 - 1" to "0 - 1"
float n(float x){
  return x/2.+.5;
}

void main(){
  vec3 firstColor=vec3(0.);
  vec3 secondColor=vec3(1.);
  vec3 color=mix(firstColor,secondColor,n(sin(u_time)));
  
  gl_FragColor=vec4(color,1.);
}