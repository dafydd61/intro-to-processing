PFont op24;

void setup() {
  size(300, 300);
  op24 = loadFont("Overpass-Heavy-24.vlw");
  textFont(op24);
}

void draw() {
  background(0);

  fill(255);
  text("Have you voted?", 20, 40);

  fill(255, 0, 0);
  text(frameCount, 20, 80);
}
