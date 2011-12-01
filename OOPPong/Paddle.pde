class Paddle {
  float x;
  float y = 10;
  float w = 10;
  float h = 30;

  Paddle() {
    x = width - 15;
  }

  void draw() {
    rect(x, y, w, h);
  }

  void moveUp() {
    paddle.y = paddle.y - paddle.h;
  }

  void moveDown() {
    paddle.y = paddle.y + paddle.h;
  }
}

