/* Random Walk - Two walkers
 * This is going to get very difficult to scale. I'm not going any farther - I assume you get the point.
 */

float x1, x2;
float y1, y2;

void setup() {
  size(600, 600);
  
  // Starting point is randomized
  x1 = random(width);
  y1 = random(height);

  x2 = random(width);
  y2 = random(height);
  
  background(0);
  noStroke();
  fill(255);
}

void draw() {
  
  // Update walkers:
  x1 = x1 + random(-1, 1);
  y1 = y1 + random(-1, 1);

  x2 = x2 + random(-1, 1);
  y2 = y2 + random(-1, 1);

  // Draw walkers:
  rect(x1, y1, 1, 1);
  rect(x2, y2, 1, 1);
}
