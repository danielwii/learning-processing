Random generator;

void setup() {
  size(640, 320);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
}
