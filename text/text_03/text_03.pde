PFont op24, op64;

void setup() {
  size(300, 300);
  op24 = loadFont("Overpass-Heavy-24.vlw");
  op64 = loadFont("Overpass-Thin-64.vlw");
}

void draw() {
  background(0);

  textFont(op24);
  fill(255);
  text("Frames:", 20, 40);

  textFont(op64);
  fill(255, 0, 0);
  text(frameCount, 20, 100);
}
