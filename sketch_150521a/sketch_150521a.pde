//Slot Machine
//Max Kingsley
//May 21, 2015

int score = 0;

void setup() {

  background(250);
  size(600, 600);

  score = score + 50;
}

void draw() {

  float 1_prob = 0.5;
  float 2_prob = 0.2;
  float 3_prob = 0.15;
  float 4_prob = 0.1;
  float 5_prob = 0.05;
  
  float num = random (1);

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

  if (score == 0) {
    textSize(80);
    text("GAME OVER", 50, 300);
  }
}

void mousePressed() {

  score = score -5;
}

