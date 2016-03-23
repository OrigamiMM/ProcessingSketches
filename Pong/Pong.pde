import ddf.minim.*;
Minim minim;
AudioSample sound;  
int x = 375;
int size = 80;
int speedy = -10;
int speedx = 5;
int y = 300;
void setup() {
  minim = new Minim (this);
  sound = minim.loadSample("game-over.wav", 128);
  size(750, 750);
}
void draw() {
  x+=speedx;
  y+=speedy;
  background(37, 30, 38);
  ellipse(x, y, size, size);
  rect(mouseX, 700, 100, 20);

  if (x> 750-size/2) {
    speedx= -speedx;
  } else if (x < 0+size/2) {
    speedx = -speedx;
  }
  if (y < 0) {
    speedy= -speedy;
  }
  if (y == 750) {
    sound.trigger();
  }
  if (mouseX<x) {
    if (x<mouseX+100) {
     if (y< 720) {
        if (y> 700) {
          speedy= -speedy;
          speedx= -speedx;
        }
      }
    }
  }
}

