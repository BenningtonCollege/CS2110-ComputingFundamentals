int yPos;

void setup() {
  size(400, 400);
  yPos = 0;
}

void draw() {
  background(0, 0, 0);
  ellipse(width/2, yPos, 40, 40);
  
  // EITHER...
  yPos = yPos + 2;
  
  if (yPos > height) {
    yPos = 0;
  }
  
  /* ...OR ALTERNATIVELY
  yPos = (yPos + 2) % height;
  */
}