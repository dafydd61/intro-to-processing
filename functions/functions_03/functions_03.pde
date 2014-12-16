void setup() {
  size(600, 600);
  noStroke();
  noLoop();
}

void draw() {
  background(0);
  for ( int i = 0; i < 36; i++ ) {
    float fillValue = float(i) / 36 * 255;
    fill ( fillValue );
    float x1 = i % 6 * 100; 
    float y1 = int(i / 6) * 100;
    rect(x1, y1, 100, 100);
  }
}
