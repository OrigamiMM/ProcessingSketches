int x = 100;
int XX = 400;
float YY = 400;
float y = 350;
float birdYVelocity = 0;
float gravity = 1;
void setup(){
size(400,700);
}
void draw(){
  float YY2= YY-525;
  background(85,119,255);
birdYVelocity= birdYVelocity+gravity;
y+= birdYVelocity;
XX = XX-5;
fill(238,221,136);
ellipse(x,y,75,50);
fill(000,238,102);
rect(XX,YY, 100,400);
fill(000,238,102);
rect(XX,YY2, 100,400);
if(XX<-99){
XX=400;
YY = random(300,600);
}
if(x>XX && x < XX+100 && y >YY){
fill(0,0,0);
text("You Lose", 10, 250);
textSize(90);
XX=XX+5;
}if(x>XX && x < XX+100 && y>YY2 && y<YY2+400){
fill(100,100,100);
text("You Lose", 10, 250);
textSize(90);
XX=XX+5;
}
}void mousePressed(){
birdYVelocity=-12;
}