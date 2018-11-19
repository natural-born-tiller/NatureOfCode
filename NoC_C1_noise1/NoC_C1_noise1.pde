float xoff = 0.0;
float yoff = 10000;
float colroff = 5000;
float colgoff = 6000;
float colboff = 7000;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  frameRate(250);
  float xn = noise(xoff);
  float yn = noise(yoff);
  float colrn = noise(colroff);
  float colgn = noise(colgoff);
  float colbn = noise(colboff);
  float x = map(xn, 0, 1, 0, width);
  float y = map(yn, 0, 1, 0, height);
  int r = int(map(colrn, 0, 1, 0, 255));
  int g = int(map(colgn, 0, 1, 0, 255));
  int b = int(map(colbn, 0, 1, 0, 255));
  noStroke();
  fill(r, g, b);
  ellipse(x, y, 25, 25);

  xoff += 0.01;
  yoff += 0.01;
  colroff += 0.01;
  colgoff += 0.01;
  colboff += 0.01;
}
