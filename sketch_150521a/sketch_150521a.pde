//Slot Machine
//Max Kingsley
//May 21, 2015

int[] slot = new int [3];
int score = 0;
int one   = 0;
int two   = 0;
int three = 0;


void setup() {

  background(250);
  size(600, 600);
  smooth();

  score = score + 50;
}

void draw() {

  fill(250,0,0);
  
  float tri_prob = 0.50; 
  float ellipse_prob = 0.30; 
  float rect_prob = 0.20;  
  float num = random(1);  
  

  if (num < tri_prob) {
  triangle(200,225,175,275,275,275);
  
  } else if (num < ellipse_prob + tri_prob) {
  ellipse(200,250,50,50);
  
  } else {
  rect(175,225,50,50);
  }
  
  
  
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

  
  float num = random(1);
  
  score = score - 5;
  

  //if (mousePressed);
 // {
    
    //  if (num <= 0.5){
  //  ellipse(200,250,75,75);
    
 // }
  //if (num <= 0.8) {
    
  //  rect(275,225,50,50);
    
  //}
    
//one = random(1);
//two = random(1);
//three = random(1);
    
 // }
  
}

