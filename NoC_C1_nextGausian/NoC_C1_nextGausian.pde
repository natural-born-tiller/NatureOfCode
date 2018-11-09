import java.util.*;

Random generator;

void setup() {
size(640, 360);
background(255);

generator = new Random();
}


void draw() {
  frameRate(1000);
  float numx = (float) generator.nextGaussian();
  float numy = (float) generator.nextGaussian();
  float sd = 80;
  float mainx = width/2;
  float mainy = height/2;
  float x = numx * sd + mainx;
  float y = numy * sd + mainy;
  fill(0,0,0,1);
  noStroke();
  ellipse(x, y, 20, 20);
}
