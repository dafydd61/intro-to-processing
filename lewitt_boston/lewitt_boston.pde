// http://nyogalleristny.files.wordpress.com/2012/10/lewitt.jpg

float[] x = new float[50];
float[] y = new float[50];

void setup() {
  fullScreen();
}

void draw() {
  for (int i = 0; i < 50; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  background(255);
  for (int i = 0; i < 50; i++) {
    noStroke();
    fill(0);
    rect(x[i], y[i], 1, 1);
    stroke(0, 50);
    for (int j = i; j < 50; j++) {
      line(x[i], y[i], x[j], y[j]);
    }
  }
  noLoop();
}

void mouseReleased() {
  loop();
}