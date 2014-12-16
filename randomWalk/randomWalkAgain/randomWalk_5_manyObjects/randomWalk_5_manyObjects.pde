/* Random Walk - objects
 * Let's make an array of Walkers! 
 */

Walker walkers[] = new Walker[20];

void setup() {
  size(600, 600);
  
  for ( int i = 0; i < walkers.length; i++ ) {
    walkers[i] = new Walker();
  }
  
  background(0);
  noStroke();
  fill(255);
}

void draw() {
  
  fill(255);

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
  
  Walker() {
    x = random(width);
    y = random(height);
  }
  
  void update() {
    x = x + random(-1, 1);
    y = y + random(-1, 1);
  }
  
  void display() {
    rect(x, y, 1, 1);
  }
}
