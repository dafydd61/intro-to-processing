/* Simple colour swap

   Swaps the blue and green channels in a photo
   Click to turn it on
   
*/

boolean mode = false;
PImage pic;

void setup() {
  size(612, 612);
  pic = loadImage("p-croswell.jpg");
}

void draw() {
  image(pic, 0, 0, width, height);
  if ( mode ) {
    loadPixels();
    for ( int i = 0; i < pixels.length; i = i + 1) {
      float g = green(pixels[i]);
      float r = red(pixels[i]);
      float b = blue(pixels[i]);
      color c;
      c = color(r, b, g);
      pixels[i] = c;
    }
    updatePixels();
  }
}

void mouseReleased() {
  mode = !mode;
}
