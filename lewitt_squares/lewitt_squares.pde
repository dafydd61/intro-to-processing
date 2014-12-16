// USING A BLACK, HARD CRAYON DRAW A TWENTY INCH SQUARE.
// DIVIDE THIS SQUARE INTO ONE INCH SQUARES. WITHIN EACH
// ONE INCH SQUARE, DRAW NOTHING, OR DRAW A DIAGONAL
// STRAIGHT LINE FROM CORNER TO CORNER OR TWO CROSSING
// STRAIGHT LINES DIAGONALLY FROM CORNER TO CORNER.

void setup() {
  size(800, 800);
}

void draw() {
  translate(100, 100);
  rect(0, 0, 600, 600);
  for (int i = 0; i < 600; i += 60) {
    for (int j = 0; j < 600; j += 60) {
      pushMatrix();
      translate(i, j);
      rect(0, 0, 60, 60);
      int action = int(random(3));
      if (action == 0) {
        line(0, 0, 60, 60);
      } else if (action == 1) {
        line(0, 0, 60, 60);
        line(60, 0, 0, 60);
      } 
      popMatrix();
    }
  }
  noLoop(); 
}

void mouseReleased() {
  loop();
}
