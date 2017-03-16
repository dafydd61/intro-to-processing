PFont overpass;
int state = 0;
float posX, posY;

void setup() {
  size(1280, 720);
  textAlign(CENTER, CENTER);
  overpass = createFont("overpass-mono-bold.otf", 128);
  textFont(overpass);
  posX = random(width);
  posY = random(height);
}

void draw() {
  float distance = dist(mouseX, mouseY, posX, posY);
  if (distance < 100) {
    state ++;
    if (state > 5) state = 0;
    posX = random(width);
    posY = random(height);
  }
  if (state == 0) {
    background(0);
    fill(255);
  } else if (state == 1) {
    background(255);
    fill(0);
  } else if (state == 2) {
    background(255, 0, 0);
    fill(255);
  } else if (state == 3) {
    background(0, 255, 0);
    fill(0);
  } else if (state == 4) {
    background(0, 0, 255);
    fill(255);
  } else {
    background(255, 255, 0);
    fill(0);
  }
  text(state, posX, posY);
}