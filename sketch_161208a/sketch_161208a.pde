int heightt = 0;
int speed = 8;
int randomNumber= 50;
int score = 0; 
void checkCatch(int x) {
  if (x > mouseX && x < mouseX+50)
    score++;
  else if (score > 0)
    score--;
  println("Your score is now: " + score);
}

void setup() {
  size(500, 500);
}
void draw() {
  heightt = heightt + speed;
  background(255, 255, 255);
  ellipse(randomNumber, heightt, 5, 15);
  stroke(000, 238, 238);
  fill(000, 255, 238);
  if (heightt>500) {
    heightt=0;
    randomNumber = (int) random(width);
  }
  rect(mouseX, 480, 50, 50);
  stroke(000, 238, 238);
  if (heightt==480) {
    checkCatch(randomNumber);
  }
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
}

