/* Random Walk - start
 * Slightly edited version of Random Walk from last week
 */

float x;
float y;

void setup() {
  size(600, 600);
  
  // Starting point is randomized  
  x = random(width);
  y = random(height);
  
  background(0);
  noStroke();
}

void draw() {
  x = x + random(-1, 1);
  y = y + random(-1, 1);
  rect(x, y, 1, 1);
}
