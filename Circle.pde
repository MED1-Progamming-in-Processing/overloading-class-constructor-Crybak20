class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int radius;
  float rectHW;
  color circleColor;
  color rectColor;

  
  
//  circle
  Circle(float x, float y, float xSpeed, float ySpeed, int radius, color circleColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.circleColor = circleColor;
  }
  
 // rect
    Circle(float x, float y, float xSpeed, float ySpeed, float rectHW, color rectColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.rectHW = rectHW;
    this.rectColor = rectColor;
    
  }
  
  //circle move method
  void move() {
    x += xSpeed;
    if (x < radius/2 || x > width - (radius/2)) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < radius/2 || y > height - (radius/2)) {
      ySpeed *= -1;
    }
  }
  
  //cirlce display method
  void display(){
    fill(circleColor);
    ellipse(x, y, radius, radius); 
   
  }
 
  
  //rect move method
  void rectMove() {
   x += xSpeed;
    if (x < rectHW/2 || x > width - (rectHW/2)) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < rectHW/2 || y > height - (rectHW/2)) {
      ySpeed *= -1;
    }
  }
  
  //rect display method
  void rectDisplay(){
    fill(rectColor);
    rect(x, y, rectHW, rectHW);
    rectMode(CENTER);
 
  }
  //text display method
  void textDisplay(int textColor, int textX, int rY, int ryxStart, int speedXYStart, int xSpeedY, int ySpeedY, int xY, int yY){
    fill(textColor);
    text("r =", textX, rY);
    text(r, ryxStart, rY);
    text("xSpeed =", textX, xSpeedY);
    text(xSpeed, speedXYStart, xSpeedY);
    text("ySpeed =", textX, ySpeedY);
    text(ySpeed, speedXYStart, ySpeedY);
    text("x =", textX, xY);
    text(x, ryxStart, xY);
    text("y =", textX, yY);
    text(y, ryxStart, yY);
  }
  
}
