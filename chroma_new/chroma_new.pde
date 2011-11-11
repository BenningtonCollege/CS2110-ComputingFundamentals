int x;
int y;
int criticalValue = 175;
PImage myImage;
PImage bgImage;

void setup() {
  size(600, 480, P2D);

  String path = selectInput();
  myImage = loadImage(path);
  
  path = selectInput();
  bgImage = loadImage(path);
  
  image(myImage, 0, 0);
  
}

void draw() {
  loadPixels();
  
  y = 0;
  while (y < height) {
    x = 0;
    while (x < width) {
      color c = get(x,y);
      
      if (green(c) > criticalValue) {
        color newColor = bgImage.get(x,y);
        set(x, y, newColor);
      }
      
      x = x + 1;
    }
    y = y + 1;
  }
  
  updatePixels();
}
