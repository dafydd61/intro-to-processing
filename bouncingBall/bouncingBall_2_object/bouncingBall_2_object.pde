Ball ball1;

void setup() {
  size(800, 450);
  noStroke();
  
  ball1 = new Ball();
}

void draw() {
  
  background(0);
  
  ball1.update();
  
  ball1.display();
  
}

class Ball {
  float x, y, speedX, speedY;
  color c;
  
  Ball() {
    c = color(random(255), random(255), random(255));
    x = random(width);
    y = random(height);    
    speedX = random(5) + 2;
    speedY = random(5) + 2;
  }
  
  void update() {
    x = x + speedX;
    y = y + speedY;
      
    if ( y >= height ) {
      speedY = speedY * -.9;
      y = height;
    }
    
    if ( x >= width || x <= 0 ) {
      speedX = -speedX;
    }
    
    speedY = speedY + .5;
  }
  
  void display() {
    fill(c);
    ellipse(x, y, 50, 50);    
  }

}
