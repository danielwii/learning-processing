float xoff = 0.0;

void draw1() {
  background(204);
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  line(n, 0, n, height);
}

void draw2() {
  float noiseScale = 0.02;
  background(0);
  for (int x=0; x < width; x++) {
    float noiseVal = noise((mouseX+x)*noiseScale, mouseY*noiseScale);
    stroke(noiseVal*255);
    line(x, mouseY+noiseVal*80, x, height);
  }
}

float t = 0.0;

void draw3() {
  float n1 = noise(t);
  float x = map(n1, 0, 1, 0, width);
  t += 0.1;
  background(200);
  line(x, 0, x, height);
  ellipse(x,height/2,16,16);
}

void draw4() {
  float n1 = noise(t);
  float x = map(n1, 0, 1, 0, width);
  t += 0.1;
  float n2 = noise(t);
  float y = map(n2, 0, 1, 0, width);
  // background(200);
  // point(x,y);
  // line(x, 0, y, height);
  ellipse(x,y,16,16);
}


void draw5() {
  float n1 = noise(t);
  float x = map(n1, 0, 1, 0, width);
  t += 0.01;
  float n2 = noise(t + 10000);
  float y = map(n2, 0, 1, 0, width);
  // background(200);
  // point(x,y);
  // line(x, 0, y, height);
  ellipse(x,y,16,16);
}

void draw6() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float bright = random(255);
      pixels[x + y * width] = color(bright);
    }
  }
  updatePixels();
}

void draw7() {
  background(0);

  // noiseDetail(8, 0.65f);

  loadPixels();
  float increment = 0.1;
  float xoff = t;
  for (int x = 0; x < width; x++) {
    xoff += increment;
    t += 0.00001;

    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      yoff += increment;
      float bright = map(noise(xoff, yoff, t), 0, 1, 0, 255);
      pixels[x + y * width] = color(bright);
    }
  }
  updatePixels();
}

void setup() {
  size(640, 320);
}

void draw() {
  // draw1();
  // draw2();
  // draw3();
  // draw4();
  // draw5();
  // draw6();
  draw7();
}
