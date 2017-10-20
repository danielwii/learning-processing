class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
  	stroke(0);
    point(x,y);
  }

  void step() {
    float stepX = random(-1, 1);
    float stepY = random(-1, 1);
    x += stepX;
    y += stepY;
  }

}

Walker w;

void setup() {
  size(640, 320);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
