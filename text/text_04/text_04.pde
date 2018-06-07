PFont op24;

void setup() {
  size(300, 300);
  op24 = loadFont("Overpass-Heavy-24.vlw");
  textFont(op24);
}

void draw() {
  background(0);
  fill(255);

textAlign(LEFT);
text("LEFT", width/2, 40);
textAlign(CENTER);
text("CENTER", width/2, 80);
textAlign(RIGHT);
text("RIGHT", width/2, 120);

}
