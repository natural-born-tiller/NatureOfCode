class Walker {
  float x;
  float y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float random = random(1);

    if (random<0.5) {
      if (mousePressed) {
        if (x<mouseX) {
          x++;
        } else if (x > mouseX) {
          x--;
        }
        if (y < mouseY) {
          y++;
        } else if (y > mouseY) {
          y--;
        }
      }
    } else {
      float stepx = random(-1, 1);
      float stepy = random(-1, 1);
      x += stepx;
      y += stepy;
    }
  }
}


Walker w;

void setup() {
  size(640, 360);
  frameRate(10000);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
