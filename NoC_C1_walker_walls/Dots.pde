class Dot {
  float x, y;
  float stroke = 2;
  float xoff = random(0, 1000);
  float yoff = random(1000, 2000);
  float step = random(-1, 1);
  float stepx = random(-1, 1);
  float stepy = random(-1, 1);
  
  Dot () {
    x = random(width);
    y = random(height);
  }

  void draw() {
    
    strokeWeight(stroke);
    stroke(255);
    noFill();
    point(x, y);
    update();
  }


  void update() {
    //stepx = noise(xoff);
    //stepy = noise(yoff);
    //x = map(stepx, 0, 1, 0, width);
    //y = map(stepy, 0, 1, 0, height);
    if (x<0 || x>width) {
      stepx = -stepx;
    }    
    if (y<0 || y>height) {
      stepy = -stepy;
    }

    x += stepx;
    y += stepy;
    xoff += 0.001;
    yoff += 0.001;
  }
}
