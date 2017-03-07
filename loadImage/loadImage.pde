PImage pic1;

void setup() {
  size(600, 600);
  pic1 = loadImage("p-dino.jpg");
}

void draw() {
  image(pic1, 0, 0, 600, 600);
}