int yPos;
int deltaY = 2;

void setup() {
  size(400, 400);
  yPos = 0;
}

void draw() {
  background(0, 0, 0);
  
  if ( (yPos <= 10) || (yPos >= height - 10) ) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }
  
  ellipse(width/2, yPos, 40, 40);
  
  yPos = yPos + deltaY;
  
  if ( (yPos <= 0) || (yPos >= height) ) {
    deltaY = -1 * deltaY; 
  }
  
}