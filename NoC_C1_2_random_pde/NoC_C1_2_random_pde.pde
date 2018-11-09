int count = 10;
int[] numbers = new int[count];


void setup() {
  size(400, 150);
  frameRate(1000);
  for (int i=0; i<numbers.length; i++) {
    numbers[i] = 0;
  }
}


void draw() {
  background(200);
  int r= int(random(0, count));
  int tmp = numbers[r];
  numbers[r] = tmp + 1;
  if(numbers[r]>=height){
    numbers[r] = 0;
  }
  int rectwidth = width / numbers.length;
  for (int i=0; i<numbers.length; i++) {
    rect(i*rectwidth, 0, rectwidth, numbers[i]);
  }
}
