int Fx= 200;
int Fy= 370;
int jump = 55;
Car mc3 = new Car(50,125,50,50,100,100,100,5);
Car mc2 = new Car(50,180,50,50,100,100,100,1);
Car mc = new Car(50,235,50,50,100,100,100,9);
Car mc1 = new Car(50,290,50,50,100,100,100,6);
Car mc4 = new Car(50,70,50,50,100,100,100,3);
Car mc5 = new Car(50,15,50,50,100,100,100,10);
void setup(){
size(400,400);
}

void draw(){
background(0,0,136);
fill(0,150,0);
ellipse(Fx,Fy,45,45);
inside();
victory();
mc.draw();
mc.move();
mc5.draw();
mc5.move();
mc1.draw();
mc1.move();
mc2.draw();
mc2.move();
mc3.draw();
mc3.move();
mc4.draw();
mc4.move();
if(Fy > mc1.y && Fy< mc1.y+50 && Fx > mc1.x && Fx< mc1.x+50){
Fx = 200;
Fy= 370;
}if(Fy > mc.y && Fy< mc.y+50 && Fx > mc.x && Fx< mc.x+50){
Fx = 200;
Fy= 370;
}if(Fy > mc2.y && Fy< mc2.y+50 && Fx > mc2.x && Fx< mc2.x+50){
Fx = 200;
Fy= 370;
}if(Fy > mc3.y && Fy< mc3.y+50 && Fx > mc3.x && Fx< mc3.x+50){
Fx = 200;
Fy= 370;
}if(Fy > mc4.y && Fy< mc4.y+50 && Fx > mc4.x && Fx< mc4.x+50){
Fx = 200;
Fy= 370;
}if(Fy > mc5.y && Fy< mc5.y+50 && Fx > mc5.x && Fx< mc5.x+50){
Fx = 200;
Fy= 370;
}
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      Fy = Fy - jump;
      }
      else if(keyCode == DOWN)
      {
      Fy = Fy + jump; 
      }
      else if(keyCode == RIGHT)
      {
      Fx = Fx + jump;
      }
      else if(keyCode == LEFT)
      {
       Fx = Fx - jump; 
      }
   }
}
private void victory(){
if(Fy < 0){
text("You Won", 10, 250); 
  textSize(90); 

}
}
private void inside()
{
if(Fx < 0){
Fx = 30;
}else if (Fx>400){
Fx = 370;
}else if (Fy >400){
Fy = 370;
}
}
class Car{
int x;
int y;
int w;
int h;
int r;
int g;
int b;
int speed;
Car(int x1, int y1, int w1, int h1, int r1, int g1, int b1, int speed1){
x = x1;
y = y1;
w = w1;
h = h1;
r = r1;
g = g1;
b = b1;
speed = speed1;
}
void draw(){
fill(r,g,b);
rect(x,y,w,h);
}
void move(){
if(x > 370){
speed = -speed;
}else if (x<1){
speed = -speed;
}x = x+speed;
}
}