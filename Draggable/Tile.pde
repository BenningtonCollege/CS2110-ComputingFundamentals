Tile target = null;

class Tile {
  int x = 0;
  int y = 0;
  int w = 0;
  int h = 0;
  int f = 0;

  Tile() {
    this((int)random(0, width), (int)random(0, height), 20, 20);
  }

  Tile(int x_, int y_, int w_, int h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    f = (int)random(0, 255);
  }

  boolean mouseWithin() {
    return (mouseX >= x) && (mouseX <= x+w) &&
      (mouseY >= y) && (mouseY <= y+h);
  }

  void draw() {
    fill(f);
    rect(x, y, w, h);
  }

  void mousePressed() {
    if (mouseWithin() && target == null) {
      target = this;
      w = 25;
      h = 25;
    }

    if (target == this) {
      x = mouseX;
      y = mouseY;
    }
  }

  void mouseReleased() {
    target = null;
    w = 20;
    h = 20;
  }
}

