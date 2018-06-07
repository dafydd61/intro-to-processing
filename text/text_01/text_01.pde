void setup() {
  size(300, 300);
}

void draw() {
  background(0);

  fill(255);
  text("Hi there", 20, 20);
  text(frameCount, 20, 40);
  
  fill(255, 0, 0);
  text(frameCount, 20, 60);
}
