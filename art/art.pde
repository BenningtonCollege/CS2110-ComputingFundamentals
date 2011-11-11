int x;
int y;

color WHITE = color(255, 255, 255);
color BLACK = color(0, 0, 0);

int parents(int x, int y) {
  int result = 0;
  if (get(x-1, y-1) != WHITE) { result = result + 4; }
  if (get(x,   y-1) != WHITE) { result = result + 2; }
  if (get(x+1, y-1) != WHITE) { result = result + 1; }
  return result;
}

void setup() {
  size(640, 480, P2D);
  background(WHITE);
  noLoop();
}

void draw() {
  loadPixels();
  
  set(width/2, 0, BLACK);
  
  for (y = 1; y < height - 1; y++) {
    for (x = 1; x < width - 1; x++) {
      if (parents(x, y) == 0) { set(x, y, WHITE); } // 1
      if (parents(x, y) == 1) { set(x, y, BLACK); } // 2
      if (parents(x, y) == 2) { set(x, y, WHITE); } // 4
      if (parents(x, y) == 3) { set(x, y, BLACK); } // 8
      if (parents(x, y) == 4) { set(x, y, BLACK); } // 16
      if (parents(x, y) == 5) { set(x, y, WHITE); } // 32
      if (parents(x, y) == 6) { set(x, y, BLACK); } // 64
      if (parents(x, y) == 7) { set(x, y, WHITE); } // 128
    }
  }
  
  updatePixels();
}


