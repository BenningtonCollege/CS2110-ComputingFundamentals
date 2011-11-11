int x;
int y;
int offsetX;
int offsetY;
PImage myImage;
String loadPath;

void setup() {
  offsetX = 70;
  offsetY = 70;

  size(600, 400);
  loadPath = selectInput();
  myImage = loadImage(loadPath);
  image(myImage, 0, 0);
}

void draw() {
  offsetX = mouseX;
  offsetY = mouseY;
  myImage = loadImage(loadPath);
  image(myImage, 0, 0);
  loadPixels();
  x = 0 + offsetX;
  while (x < (width/2) + offsetX) {
    y = 0 + offsetY;
    while (y < (height/2) + offsetY) {
      color r = (int)red(get(x % width, y % height));
      color g = (int)green(get(x % width, y % height));
      color b = (int)blue(get(x % width, y % height));
      r = g;
      g = b;
      b = r;
      pixels[((y % height) * width) + (x % width)] = pixels[pixels.length-y*x];
      y = y + 1;
    }
    x = x + 1;
  }
  updatePixels();
}

