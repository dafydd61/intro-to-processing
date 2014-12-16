/* Random Walk - object
 * Let's create a *thing* called a Walker that knows how to behave on its own, and remembers where it is. 
 */

Walker walker = new Walker();

void setup() {
  size(600, 600);
  
  walker = new Walker();
  
  background(0);
  noStroke();
  fill(255);
}

void draw() {
  
  fill(255);

  // Update walker:
  walker.update();

  // Draw walker:
  walker.display();

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
