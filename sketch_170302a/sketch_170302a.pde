void setup(){
size(500,500);
background(250,1000,1000);
}
void draw(){
  makeMagical();
float x = random(500);
float y = random(500);
fill(x-y,y+x,x*y);
ellipse(getWormX(100),getWormY(25),250,250);
}

float frequency = 10000;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}