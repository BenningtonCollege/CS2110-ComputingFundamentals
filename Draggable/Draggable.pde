Tile[] ta = new Tile[10];

void setup() {
  size(500, 500);

  for (int i = 0; i < 10; i = i + 1) {
    ta[i] = new Tile();
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 10; i = i + 1) {
    ta[i].draw();
  }

  if (mousePressed) {
    for (int i = 0; i < 10; i = i + 1) {
      ta[i].mousePressed();
    }
  }

  if (!mousePressed) {
    for (int i = 0; i < 10; i = i + 1) {
      ta[i].mouseReleased();
    }
  }
} 

