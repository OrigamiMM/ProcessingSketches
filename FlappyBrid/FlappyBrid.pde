int x = 100;
int XX = 400;
float YY = 500;
float y = 350;
float birdYVelocity = 6;
float gravity = 2;
void setup(){
size(400,700);
}
void draw(){
  background(85,119,255);
y= y+gravity;
XX = XX-5;
fill(238,221,136);
ellipse(x,y,75,50);
if(mousePressed){
y = y- birdYVelocity; 
}
fill(000,238,102);
rect(XX,YY, 100,700);
if(XX<-99){
XX=400;
YY = random(350,550);
}
}