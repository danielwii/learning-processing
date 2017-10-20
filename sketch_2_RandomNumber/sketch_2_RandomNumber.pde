int[] randomCounts;

void setup() {
  size(640, 320);
  randomCounts = new int[20];
}

void draw() {
  background(255);
  int index = int(random(randomCounts.length));
  randomCounts[index]++;

  stroke(0);
  fill(175);
  int w = width / randomCounts.length;
  for(int x = 0; x < randomCounts.length; x++) {
    int rX = x * w; // x of upper-left
    int rY = height - randomCounts[x]; // y of upper-left
    int rWidth = w - 1;
    int rHeight = randomCounts[x];
    rect(rX, rY, rWidth, rHeight);
  }
}
