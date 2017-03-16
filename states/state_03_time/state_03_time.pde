PFont overpass;
int state = 0;

void setup() {
  size(1280, 720);
  textAlign(CENTER, CENTER);
  overpass = createFont("overpass-mono-bold.otf", 128);
  textFont(overpass);
}

void draw() {
  if (frameCount < 200) {
    state = 0;
    background(0);
    fill(255);
  } else if (frameCount < 400) {
    state = 1;
    background(255);
    fill(0);
  } else if (frameCount < 600) {
    state = 2;
    background(255, 0, 0);
    fill(255);
  } else if (frameCount < 800) {
    state = 3;
    background(0, 255, 0);
    fill(0);
  } else if (frameCount < 1000) {
    state = 4;
    background(0, 0, 255);
    fill(255);
  } else {
    state = 5;
    background(255, 255, 0);
    fill(0);
  }
  text(state + ":" + frameCount, width/2, height/2);
}