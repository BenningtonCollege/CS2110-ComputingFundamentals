int x;
int y;
int criticalValue = 140;
PImage myImage;
PImage bgImage;

void setup() {
  size(600, 480, P2D);

  String path = selectInput();
  myImage = loadImage(path);
  
  path = selectInput();
  bgImage = loadImage(path);
  
  myImage.resize(600,480);
  bgImage.resize(600,480);
  
  image(myImage, 0, 0);
  
}

void draw() {
  loadPixels();
  
  for (y = 0; y < height; y++) {
    for (x = 0; x < width; x++) {
      color c = get(x,y);
      
      if ((green(c) > criticalValue) &&
          (red(c)   < 150))
      {
        color newColor = bgImage.get(x,y);
        set(x, y, newColor);
      }
    }
  }
  
  updatePixels();
}


void mouseMoved() {
  int r = floor(red(get(mouseX, mouseY)));
  int g = floor(green(get(mouseX, mouseY)));
  int b = floor(blue(get(mouseX, mouseY)));
  fill(color(0,0,0));
  rect(0, 0, 300, 16);
  fill(color(255,255,255));
  text(mouseX + ", " + mouseY + ": " + r + ", " + g + ", " + b, 10, 10);
}
