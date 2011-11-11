int x;
int y;
PImage myImage;
PImage bgImage;
String loadPath;

void setup() {
  size(600, 480, P2D);
  loadPath = selectInput();
  myImage = loadImage(loadPath);
  
  loadPath = selectInput();
  bgImage = loadImage(loadPath);

  myImage.resize(600, 0);
  bgImage.resize(600, 0);
  
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
  loadPixels();
  
  x = 0;
  while ( x < width ) {
    y = 0;
    while ( y < height ) {
      color c1 = get(x, y);
      color c2 = bgImage.get(x, y);
      if (green(c1) > 150) {
        set(x, y, c2);
      }
      y = y + 1;
    }
    x = x + 1;
  }

  updatePixels();
}

