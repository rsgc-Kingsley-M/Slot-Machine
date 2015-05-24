//Slot Machine
//Max Kingsley
//May 21, 2015

int[] slot  = new int [3];
int[] shape = new int [3];
int score = 0;

float shape1 = random(1, 3);
int rShape1  = round(shape1);
float shape2 = random(1, 3);
int rShape2  = round(shape2);
float shape3 = random(1, 3);
int rShape3  = round(shape3);


void setup() {

  background(250);
  size(600, 600);
  smooth();

  score = score + 100;

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

  fill(250);  
  rect(150, 200, 100, 100);
  rect(250, 200, 100, 100);
  rect(350, 200, 100, 100);
}

void draw() {

  fill(250);

  rect(150, 350, 300, 150);

  fill(0);
  rect(520, 150, 10, 200);

  fill(250, 0, 0);
  ellipse(525, 150, 25, 25);

  textSize(40);
  text("Score: " + score, 200, 400);

  beginContour();
  vertex(150, 200);
  vertex(450, 200);
  vertex(450, 300);
  vertex(150, 300);
  vertex(150, 200);
  endContour();

  if (score <= 0) {
    textSize(20);
    text("GAME OVER", 240, 93);
  }
}

void mousePressed() {

  score = score - 10;


  if (mousePressed);
  {

    float shape1 = random(1, 3);
    int rShape1  = round(shape1);
    float shape2 = random(1, 3);
    int rShape2  = round(shape2);
    float shape3 = random(1, 3);
    int rShape3  = round(shape3);

    fill(250);  
    rect(150, 200, 100, 100);
    rect(250, 200, 100, 100);
    rect(350, 200, 100, 100);
    
    fill(250);
    rect(125, 75, 350, 25);

    fill(250, 0, 0);
    textSize(30);
    text("" + rShape1, 190, 260);
    text("" + rShape2, 290, 260);
    text("" + rShape3, 390, 260);

    if (round(shape1) == 1 && round(shape2) == 1 && round(shape3) == 1) {

      score = score + 50;

      textSize(20);
      text("+50!", 260, 93);
    }

    if (round(shape1) == 2 && round(shape2) == 2 && round(shape3) == 2) {

      score = score + 100;

      textSize(20);
      text("+100!!", 260, 93);
    }
    
    if (round(shape1) == 3 && round(shape2) == 3 && round(shape3) == 3) {

      score = score + 300;

      textSize(20);
      text("+300!¡! ", 260, 93);
    }
  }
}

