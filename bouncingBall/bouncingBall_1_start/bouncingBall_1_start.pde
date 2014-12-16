float x, y, speedX, speedY;
color c;

void setup() {
  size(800, 450);
  c = color(random(255), random(255), random(255));
  noStroke();
  
  x = random(width);
  y = random(height);
  
  speedX = random(5) + 2;
  speedY = random(5) + 2;
}

void draw() {
  
  background(0);
  
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

  fill(c);
  ellipse(x, y, 50, 50);
}
