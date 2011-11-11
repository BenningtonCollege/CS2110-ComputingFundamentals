import processing.video.*;
Capture myCapture;

void setup() 
{
  size(700, 600);
  frameRate(30);   
  noStroke();
  myCapture = new Capture(this, width, height, 10);
}

void captureEvent(Capture myCapture) {
  myCapture.read();
}

float pointillize;
int i, x, y;
color pix;

void draw() {
  pointillize = map(mouseX, 0, width, 2, 80);
  for (i = 0; i < 1000; i++) {
    x = int(random(myCapture.width));
    y = int(random(myCapture.height));
    pix = myCapture.get(x, y);

    if (green(pix) > 150) {
       pix = color(255, 0, 0);
    } 

    fill(pix);

    x = (int)map(x,    0, width,     width, 0);

    rect(x, y, pointillize, pointillize);
  }
}

// SAVE IMAGE
int saveincr;
void mousePressed() 
{
  saveincr++;
  save("image"+saveincr+".jpg");
}

