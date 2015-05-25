//Slot Machine
//Max Kingsley
//May 21, 2015

//money you bring to the machine
int score = 100;

//picks a random number between 1 and 3
float shape1 = random(1, 3);
//rounds that number to the nearest whole number
int rShape1  = round(shape1);
float shape2 = random(1, 3);
int rShape2  = round(shape2);
float shape3 = random(1, 3);
int rShape3  = round(shape3);


void setup() {

  background(250);
  size(600, 600);
  smooth();


//slot machine
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
  text("Funds: $" + score, 170, 400);

//game over screen when all money lost
  if (score <= 0) {
    textSize(20);
    text("GAME OVER", 240, 93);
  }
  
  if (score == 420){
    
    textSize(12);
    text("blaze it", random(width), random(height));
    
  } 
}

void mousePressed() {

  
  //cost per spin
  score = score - 10;


  if (mousePressed);
  {

    //same code
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
    
//when each wheel gets a triangle, display a triangle
if (rShape1 == 1){
  fill(0,0,250);
  triangle(200,225,175,275,225,275);
}
if (rShape2 == 1){
  fill(0,0,250);
  triangle(300,225,275,275,325,275);
}
if (rShape3 == 1){
  fill(0,0,250);
  triangle(400,225,375,275,425,275);
}

//when each wheel gets a circle, display a circle
if (rShape1 == 2){
  fill(0,250,0);
  ellipse(200,250,50,50);
}
if (rShape2 == 2){
  fill(0,250,0);
  ellipse(300,250,50,50);
}
if (rShape3 == 2){
  fill(0,250,0);
  ellipse(400,250,50,50);
}


//if each wheel gets a square, display a square
if (rShape1 == 3){
  fill(250,0,0);
  rect(175,225,50,50);
}
if (rShape2 == 3){
  fill(250,0,0);
  rect(275,225,50,50);
}
if (rShape3 == 3){
  fill(250,0,0);
  rect(375,225,50,50);
}

//each number for each wheel
    //fill(250, 0, 0);
   // textSize(30);
   // text("" + rShape1, 190, 260);
   // text("" + rShape2, 290, 260);
    //text("" + rShape3, 390, 260);

//if statements to check if you win or not
    if (round(shape1) == 1 && round(shape2) == 1 && round(shape3) == 1) {

      score = score + 50;

      fill(250, 0, 0);
      textSize(20);
      text("+$50!", 260, 93);
    }

    if (round(shape1) == 2 && round(shape2) == 2 && round(shape3) == 2) {

      score = score + 100;
      fill(250, 0, 0);
      textSize(20);
      text("+$100!!", 260, 93);
    }

    if (round(shape1) == 3 && round(shape2) == 3 && round(shape3) == 3) {

      score = score + 300;
      fill(250, 0, 0);
      textSize(20);
      text("+$300!¡!            nice.", 260, 93);
    }
  }
}

