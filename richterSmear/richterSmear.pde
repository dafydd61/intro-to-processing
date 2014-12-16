PImage pic;

void setup() {
  size(612, 612, P3D);
  pic = loadImage("p-dino.jpg");
  noStroke();
}

void draw() {
  image(pic, 0, 0);
  for (int i = 0; i < pic.height; i++) {
    color c = pic.pixels[i * pic.width + mouseX];
    fill(c);
    rect(0, i, mouseX, 1);
  }
}
