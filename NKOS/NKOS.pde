int x;
int y;

color OFF = color(255, 255, 255);
color ON = color(0, 0, 0); // 1
            //  1    2    4    8    16   32   64   128
color rule[] = {ON, OFF, ON, OFF, OFF, ON, OFF, ON};

int parents(int x, int y) {
  int result = 0;
  if (get(x-1, y-1) != OFF) { result = result + 4; }
  if (get(x,   y-1) != OFF) { result = result + 2; }
  if (get(x+1, y-1) != OFF) { result = result + 1; }
  return result;
}

void setup() {
  size(640, 480, P2D);
  background(OFF);
  //noLoop();
}

void draw() {
  loadPixels();
  
  set(width/2, 0, ON);
  
  for (y = 1; y < height - 1; y++) {
    for (x = 1; x < width - 1; x++) {
      int numParents = parents(x, y);
      set(x, y, rule[numParents]);
    }
  }
  
  
  updatePixels();
  delay(0);

  for (x = 1; x < width - 1; x++) {
    color c = get(x, 1);
    set(x, 0, c);
  }

}



