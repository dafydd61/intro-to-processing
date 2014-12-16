void setup() {
  size(600, 600);
  noStroke();
  fill(255);
}

void draw() {
  background(0);
  int mouseXtimesFive = multiplyByFive(mouseX);
  text(mouseX, 20, 20);
  text(mouseXtimesFive, 20, 60);
}

int multiplyByFive(int val) {
  int result = val * 5;
  return result;
}
