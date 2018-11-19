Dot[] dots;
int countd = 50;
int distmax = 150;

void setup() {
  size(500, 500);
  dots = new Dot[countd];
  for (int i=0; i<countd; i++) {
    dots[i] = new Dot();
  }
}

void draw() {
  background(51);
  for (int i=0; i<countd; i++) {
    dots[i].draw();
  }
  for (int i=0; i<countd; i++) {
    for (int j=0; j<countd; j++) {
      float dist = dist(dots[i].x, dots[i].y, dots[j].x, dots[j].y);
      if (dist < distmax) {
        float a = map(dist, 0, distmax, 100, 0);
        float str = map(dist, 0, distmax, 1, 0);
        strokeWeight(str);
        stroke(255, 255, 255, a);
        line(dots[i].x, dots[i].y, dots[j].x, dots[j].y);
      }
    }
  }
  println(frameRate);
}
