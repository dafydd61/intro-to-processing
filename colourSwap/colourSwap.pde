PImage pic;

int mode = 0;
// 0: rgb
// 1: rbg
// 2: gbr
// 3: grb
// 4: brg
// 5: bgr

void setup() {
  size(612, 612);
  pic = loadImage("p-croswell.jpg");
}

void draw() {
  image(pic, 0, 0, width, height);
  loadPixels();
  for ( int i = 0; i < pixels.length; i = i + 1) {
    float g = green(pixels[i]);
    float r = red(pixels[i]);
    float b = blue(pixels[i]);
    color c;
    switch(mode) {
      case 0:
        c = color(r, g, b);
        break;
      case 1:
        c = color(r, b, g);
        break;
      case 2:
        c = color(g, b, r);
        break;
      case 3:
        c = color(g, r, b);
        break;
      case 4:
        c = color(b, r, g);
        break;
      case 5:
        c = color(b, g, r);
        break;
      default:
        c = color(r, g, b);
        break;
    }
    pixels[i] = c;
  }
  updatePixels();
}

void mouseReleased() {
  mode = (mode + 1) % 6;
}
