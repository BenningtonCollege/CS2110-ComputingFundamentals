Ball ball = new Ball();
Paddle paddle;
 
void setup() {
  size(400, 400);
  paddle = new Paddle();
}
 
void draw() {
  background(255, 255, 255);
  ball.draw();
 
  paddle.draw();
  
  if (ball.right() > width) {
    fill(255, 0, 0, 100);
    rect(0, 0, width, height);
    noLoop();
  }
 
  if (collision()) {
    ball.dX = -ball.dX; // if dX == 2, it becomes -2; if dX is -2, it becomes 2
  }
  
  ball.update();
}
 
boolean collision() {
  boolean returnValue = false; // assume there is no collision
  if ((ball.right() >= paddle.x) && (ball.left() <= paddle.x + paddle.w)) {
    if ((ball.bottom() >= paddle.y) && (ball.top() <= paddle.y + paddle.h)) {
      returnValue = true;
    }
  }
  return returnValue;
}
 
 
// based on code from http://processing.org/reference/keyCode.html
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle.moveUp();
    } else if (keyCode == DOWN) {
      paddle.moveDown();
    }
  }
}
