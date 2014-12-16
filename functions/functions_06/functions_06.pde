void setup() {
  size(600, 600);
  noStroke();
  fill(255);
}

void draw() {
  background(0);
  int mouseXtimesFive = multiplyBy(mouseX, 5);
  text(mouseX, 20, 20);
  text(mouseXtimesFive, 20, 60);
}

int multiplyBy(int val, int multiplier) {
  int result = val * multiplier;
  return result;
}
