int[] numbers = new int[10];

void setup() {
  noLoop();
  for ( int i = 0; i < numbers.length; i++ ) {
    numbers[i] = int(random(200));
  }
}

void draw() {
  for ( int i = 0; i < numbers.length; i++ ) {
    println(numbers[i]);
  }
}
