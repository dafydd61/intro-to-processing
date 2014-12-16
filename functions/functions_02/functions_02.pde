void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(0);
  for ( int i = 0; i < 36; i++ ) {
    drawRandomRect();
  }
}

void drawRandomRect() {
  float fillValue = random(255);
  fill ( fillValue );
  float x1 = random(width - 100); 
  float y1 = random(height - 100);
  rect(x1, y1, 100, 100);
}
