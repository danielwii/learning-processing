int x;

void setup() {
  size(640, 320);
}

void draw() {
  float num = randomGaussian();

  float sd = 60;
  float x = num * sd;

  noStroke();
  fill(255, 10);
  ellipse(width / 2 + x, height / 2, 16, 16);
}
