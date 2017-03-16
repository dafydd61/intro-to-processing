PFont overpass;
int state = 0;

void setup() {
  size(1280, 720);
  textAlign(CENTER, CENTER);
  overpass = createFont("overpass-mono-bold.otf", 128);
  textFont(overpass);
}

void draw() {
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
  text(state, width/2, height/2);
}

void mouseReleased() {
  state = state + 1;
  if (state > 5) {
    state = 0;
  }
}

void keyReleased() {
  switch(key) {
    case '0':
      state = 0;
      break;
    case '1':
      state = 1;
      break;
    case '2':
      state = 2;
      break;
    case '3':
      state = 3;
      break;
    case '4':
      state = 4;
      break;
    case '5':
      state = 5;
      break;
    default:
      break;
  }
}