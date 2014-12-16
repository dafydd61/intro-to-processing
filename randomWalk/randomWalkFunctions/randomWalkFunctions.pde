float x, y;

void setup() {
  size(600, 600);
  x = width / 2;
  y = height / 2;
  background(0);
  stroke(255);
  fill(255);
}

void draw() {
  background(0);
  float newX = x + random(-1, 1);
  float newY = y + random(-1, 1);
  line(x, y, newX, newY);
  ellipse(newX, newY, 200, 200);
  x = newX;
  y = newY;
}
