int x;
int y;

size(500, 500);

x = 0;
while (x < width) {
  y = 0;
  while (y < height) {
    stroke( color(x % 255, y % 255, 0) );
    point(x, y);
    y = y + 1;
  }
  x = x + 1;
}



