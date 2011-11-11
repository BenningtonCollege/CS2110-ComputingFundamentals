int x;
int y;
PImage myImage;
String loadPath;

void setup() {
  size(600, 480, P2D);
  loadPath = selectInput();
  myImage = loadImage(loadPath);
  
 
  myImage.resize(600, 0);
  
  image(myImage, 0, 0);
  noLoop();
}

void draw() {
  loadPixels();
  
  x = 0;
  while ( x < width ) {
    y = 0;
    while ( y < height ) {
     
      color c = get(x, y);
      println(red(c) + ", " + green(c) + ", " + blue(c));
      
      y = y + 1;
    }
    x = x + 1;
  }

  updatePixels();
}

