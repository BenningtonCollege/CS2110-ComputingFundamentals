Tile target = null;
String[] sa = {"apple", "baker", "charlie", "delta", "echo", "foxtrot"};

class Tile {
  int x = 0;
  int y = 0;
  int w = 0;
  int h = 0;
  String s = "";

  Tile() {
    this((int)random(0, width), (int)random(0, height), 40, 20);
  }

  Tile(int x_, int y_, int w_, int h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    s = sa[(int)random(0, sa.length)];
  }

  boolean mouseWithin() {
    return (mouseX >= x) && (mouseX <= x+w) &&
      (mouseY >= y) && (mouseY <= y+h);
  }

  void draw() {
    fill(255);
    rect(x, y, w, h);
  }

  void mousePressed() {
    if (mouseWithin() && target == null) {
      target = this;
      w = 45;
      h = 25;
    }

    if (target == this) {
      fill(0);
      text(s, x +5 , y + h/2);
    }
  }

  void mouseReleased() {
    target = null;
    w = 40;
    h = 20;
  }
}

