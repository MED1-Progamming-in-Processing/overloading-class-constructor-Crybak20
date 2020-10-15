Circle circle;
Circle rect;
float r;

void setup() {
  size(500, 500);
 

 
  circle = new Circle(random(1,width), random(1,height), random(-5,8), random(-5,8), 30, #4AFCDD);

  rect = new Circle(random(1,width), random(1,height), random(-5,8), random(-5,8), 30.5, #FCD94A);

  r = random(1,10);
}

void draw() {
  background(255);



//display circle if r is less than 5
if(r <= 5){
  circle.move();
  circle.display();
  circle.textDisplay(0, 15, 20, 35, 75, 35, 50, 65, 80);
}

//display rect if r is bigger than 5
if(r > 5){
  rect.rectMove();
  rect.rectDisplay();
  rect.textDisplay(0, 15, 20, 35, 75, 35, 50, 65, 80);
}
  
  
 }
