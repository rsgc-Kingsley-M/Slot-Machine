//Slot Machine
//Max Kingsley
//May 21, 2015

int[] slot  = new int [3];
int[] shape = new int [3];
int score = 0;
int s1    = 1;
int s2    = 2;
int s3    = 3;


void setup() {

  background(250);
  size(600, 600);
  smooth();

  score = score + 50;
}

void draw() {
  
  fill(50, 150, 200);
  beginShape();
  vertex(100, 50);
  vertex(500, 50);
  vertex(500, 125);
  vertex(450, 125);
  vertex(450, 150);
  vertex(500, 150);
  vertex(500, 300);
  vertex(550, 300);
  vertex(550, 400);
  vertex(500, 400);
  vertex(500, 550);
  vertex(100, 550);
  vertex(100, 150);
  vertex(150, 150);
  vertex(150, 125);
  vertex(100, 125);
  vertex(100, 50);
  endShape();

  fill(250);
  rect(125, 75, 350, 25);

  rect(150, 200, 100, 100);
  rect(250, 200, 100, 100);
  rect(350, 200, 100, 100);

  rect(150, 350, 300, 150);

  fill(0);
  rect(520, 150, 10, 200);

  fill(250, 0, 0);
  ellipse(525, 150, 25, 25);

  textSize(40);
  text("Score: " + score, 200, 400);


  if (score <= 0) {
    textSize(80);
    text("GAME OVER", 50, 300);
  }
  

}

void mousePressed() {
  
  score = score - 5;
  
  
    if (mousePressed);{
    
 float shape1 = random(1,3);
    
    textSize(12);
    text("" + shape1,200,250);
    
  }
  
}
