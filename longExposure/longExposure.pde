/*****************************

longExposure
Old fashioned camera - it takes a long time to make a picture.
Added bonus: this means that only still objects get photographed.
Eventually, it will overexpose. Like a real camera.

*****************************/
 
import processing.video.*;

Capture cam;
PImage tempImg;                // We'll display the picture using this variable
float factor=.001;              // How fast does the camera expose?
float[] r, g, b;

void setup() {
  size(640, 480, P2D);

  r = new float[width*height];    // These 3 arrays contain each pixel of the picture we're building
  g = new float[width*height];
  b = new float[width*height];

  cam = new Capture(this, 640, 480, 24);
  cam.start();

  background(0);
  tempImg = get();                // Start with a blank picture
}


void draw() {
  if (cam.available()) {
    cam.read();
    cam.loadPixels();                                                  // put the frame into an array
    for ( int i = 0; i < cam.pixels.length; i++ ) {                    // Add each pixel to the saved picture
      r[i] += red(cam.pixels[i]) * factor;
      g[i] += green(cam.pixels[i]) * factor;
      b[i] += blue(cam.pixels[i]) * factor;
    }
    tempImg.loadPixels();                                              // Assign a colour to each pixel in our display image
    for ( int i = 0; i < cam.pixels.length; i++ ) {
      tempImg.pixels[i] = color(int(r[i]), int(g[i]), int(b[i]));
    }
    tempImg.updatePixels();
    image(tempImg, 0, 0);
  }
} 