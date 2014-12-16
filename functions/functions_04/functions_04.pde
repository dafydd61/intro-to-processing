void setup() {
  size(600, 600);
  noStroke();
  noLoop();
}

void draw() {
  background(0);
  for ( int i = 0; i < 36; i++ ) {
    drawSquare(i);
  }
}

void drawSquare(int position) {
  float fillValue = float(position) / 36 * 255;
  fill ( fillValue );
  float x1 = position % 6 * 100; 
  float y1 = int(position / 6) * 100;
  rect(x1, y1, 100, 100);
}
