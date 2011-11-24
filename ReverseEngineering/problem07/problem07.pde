int xPos;
int yPos;
int gray;
int alpha;
int i = 0;

void setup() {
  size(400, 400);
  background(0, 0, 0);
}

void draw() {
  i = (i + 1) % 10;
  
  if (i == 0) {
    background(0, 0, 0);
    delay(1000);
  }  

  xPos = (int)random(width);
  yPos = (int)random(height);

  gray = (int)random(255);
  alpha = (int)random(255);

  fill(gray, alpha);
  
  ellipse(xPos, yPos, 40, 40);
    
}