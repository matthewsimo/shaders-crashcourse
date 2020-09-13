precision mediump float;

uniform float u_time;

// https://thebookofshaders.com/glossary/?search=sin
float n(float x){
  return x/2.+.5;
}

void main(){
  vec3 firstColor=vec3(0.);
  vec3 secondColor=vec3(1.);
  vec3 color=mix(firstColor,secondColor,n(sin(u_time)));
  
  gl_FragColor=vec4(color,1.);
}