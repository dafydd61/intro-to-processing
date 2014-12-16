PImage img, originalImg;
String imgFile = "fruit.jpg";
int numPixels;

void setup() {
  size(400, 400);
  originalImg = loadImage(imgFile);   
}

void draw() {
  img = originalImg.get();
  int m = mouseX * 255 / width;
  for(int i = 0; i < img.pixels.length; i++) {
    color pix = img.pixels[i];
    int r = (pix >> 16) & 0xFF;
    int g = (pix >> 8) & 0xFF;
    int b = (pix >> 0) & 0xFF;
     
    // do some sort of checking (ie. if red, change the colour)
    if(r > 100 && g < 75 && b < 75) {
      img.pixels[i] = color(0, m, 0);
    }
     
  }

  image(img, 0, 0);
}
