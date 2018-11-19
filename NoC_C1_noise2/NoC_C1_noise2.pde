
void setup() {
  size(600, 600);
}

float zoff = 0;
void draw() {

  loadPixels();
  float xoff = 0.0;
  for (int x = 0; x < width; x++) {
    xoff += 0.01;
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      yoff += 0.01;
      float bright = map(noise(xoff, yoff, zoff), 0, 1, 0, 255);
      //float bright = noise(xoff, yoff, zoff) * 255;
      pixels[x+y * width] = color(bright);
    }
  }
  updatePixels();
  zoff += 0.005;
}
