int x;
int y;
int criticalValue = 140;
PImage greenImage;
PImage bgImage;

void setup() {
  size(600, 480, P2D);

  String path = selectInput();
  greenImage = loadImage(path);
  
  path = selectInput();
  bgImage = loadImage(path);
  
  greenImage.resize(600,480);
  bgImage.resize(600,480);
  
  image(greenImage, 0, 0);
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
  
  color m = get(mouseX, mouseY);
  fill(255);
  rect(0, 0, 275, 20);
  fill(0);
  text(mouseX + ", " + mouseY + 
       ": r" + red(m) + " g" + green(m) + " b" + blue(m), 
       10, 15);
  
  updatePixels();
}




