// https://thebookofshaders.com/glossary/?search=vec3
// https://thebookofshaders.com/glossary/?search=mix
// https://thebookofshaders.com/glossary/?search=sin
// https://thebookofshaders.com/glossary/?search=fract
// https://thebookofshaders.com/glossary/?search=vec4


precision mediump float;

uniform vec2 u_resolution;
uniform float u_time;
uniform float u_tiles;

float tilesMin=1.;
float tilesMax=1.;

// Normalize value from "-1 - 1" to "0 - 1"
float n(float x){
  return x/2.+.5;
}

void main(){
  vec2 st=gl_FragCoord.xy/u_resolution;
  float tileNumber=mix(tilesMin,tilesMax,n(sin(u_time)));
  st*=tileNumber;
  st=fract(st);
  gl_FragColor=vec4(st.x,st.y,0.,1.);
}