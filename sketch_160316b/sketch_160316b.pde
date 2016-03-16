import ddf.minim.*;
AudioSample sound;  

void setup() {
  size(500, 500);
  fill(204, 119, 000);
  ellipse(250, 250, 450, 450);
  fill(221, 000, 000);
  ellipse(250, 250, 425, 425);
  fill(238, 204, 000);
  ellipse(250, 250, 400, 400);
  Minim minim = new Minim(this);  
  sound = minim.loadSample("quack.wav");
}
void draw() {
  if (mousePressed) {
    PImage kitten = loadImage("kitten.ppm.gif");
    kitten.resize(20, 20);
    sound.trigger();  
    image(kitten, mouseX, mouseY);
  }
}

