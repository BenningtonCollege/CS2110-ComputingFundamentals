int xPos;
int yPos;

void setup() {
  size(400, 400);
}

void draw() {
  background(0, 0, 0);
    
  xPos = (int)random(width);
  yPos = (int)random(height);
  
  ellipse(xPos, yPos, 40, 40);
    
}