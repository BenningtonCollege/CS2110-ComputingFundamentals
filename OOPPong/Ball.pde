class Ball {
  float x;
  float y;
  float r; // radius
  float dX;
  float dY;

  Ball() {
    x = 20;
    y = 20;
    r = 10;

    dX = random(1, 2);
    dY = random(1, 2);
  }

  void draw() {
    ellipse(x, y, 2 * r, 2 * r);
  }

  void update() {
    if (left() < 0) {
      dX = -dX; // if dX == 2, it becomes -2; if dX is -2, it becomes 2
    }

    if (bottom() > height) {
      dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
    }

    if (top() < 0) {
      dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
    }


    x = x + dX;
    y = y + dY;
  }

  float left() {
    return x - r;
  }

  float right() {
    return x + r;
  }

  float top() {
    return y - r;
  }

  float bottom() {
    return y + r;
  }
}

