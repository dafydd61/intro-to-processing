PFont op24;

void setup() {
  size(300, 300);
  op24 = loadFont("Overpass-Heavy-24.vlw");
  textFont(op24);
}

void draw() {
  background(0);
  
  fill(255, 0, 0);
  textAlign(LEFT, TOP);
  text("LEFT, TOP", 20, height/2);
  
  fill(0, 255, 0);
  textAlign(LEFT, CENTER);
  text("LEFT, CENTER", 20, height/2);
  
  fill(0, 0, 255);
  textAlign(LEFT, BOTTOM);
  text("LEFT, BOTTOM", 20, height/2);

}
