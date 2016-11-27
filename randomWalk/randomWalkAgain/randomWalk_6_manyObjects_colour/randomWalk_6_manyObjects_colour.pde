/* Random Walk - objects
 * Let's make an array of Walkers! 
 */

Walker walkers[] = new Walker[1000];

void setup() {
  fullScreen();
  
  for ( int i = 0; i < walkers.length; i++ ) {
    walkers[i] = new Walker();
  }
  
  background(0);
  noStroke();
  colorMode(HSB, 360, 100, 100);
}

void draw() {

  // Update walkers:
  for ( int i = 0; i < walkers.length; i++ ) {
    walkers[i].update();
  }

  // Draw walkers:
  for ( int i = 0; i < walkers.length; i++ ) {
    walkers[i].display();
  }
}

class Walker {
  
  float x;
  float y;
  float h, s, b;
  
  Walker() {
    x = random(width);
    y = random(height);
    h = random(360);
    s = random(100);
    b = random(100);
  }
  
  void update() {
    x = x + random(-1, 1);
    y = y + random(-1, 1);
  }
  
  void display() {
    fill(h, s, b, 50);
    rect(x, y, 1, 1);
  }
}