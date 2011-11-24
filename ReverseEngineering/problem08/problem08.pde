int xPos;
int yPos;
int r, g, b;
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

  r = (int)random(255);
  g = (int)random(255);
  b = (int)random(255);
  alpha = (int)random(255);

  fill(r, g, b, alpha);
  
  ellipse(xPos, yPos, 40, 40);
    
}