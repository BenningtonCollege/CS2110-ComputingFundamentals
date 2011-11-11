int initialPopulation = 10000;
int w = 600;
int h = 480;

int grid[][] = new int[w][h];

void displayGrid() {
  int x = 0;
  int y = 0;
  color red = color(255, 0, 0);
  
  stroke(red);
  fill(red);
  
  while (y < h) {
    x = 0;
    while (x < w) {
      if (grid[x][y] > 0) {
        point(x, y);
      }
      
      x = x + 1;
    }
    
    y = y + 1;
  }
}

int livingNeighbors(int x, int y) {
  int result = 0;
  
  x = max(1, x);
  y = max(1, y);
  
  x = min(w-2, x);
  y = min(h-2, y);
  
  if (grid[x-1][y] > 0) { result = result + 1; }
  if (grid[x+1][y] > 0) { result = result + 1; }

  if (grid[x][y-1] > 0) { result = result + 1; }
  if (grid[x][y+1] > 0) { result = result + 1; }

  if (grid[x-1][y-1] > 0) { result = result + 1; }
  if (grid[x-1][y+1] > 0) { result = result + 1; }

  if (grid[x+1][y-1] > 0) { result = result + 1; }
  if (grid[x+1][y+1] > 0) { result = result + 1; }
  
  return result;
}

void updateGrid() {
  int x = 0;
  int y = 0;
  color red = color(255, 0, 0);
  
  stroke(red);
  fill(red);
  
  while (y < h) {
    x = 0;
    while (x < w) {
      if ((livingNeighbors(x, y) == 3) ||
          (livingNeighbors(x, y) == 4))
      {
        grid[x][y] = 1;
      } else {
        grid[x][y] = 0;
      }
      
      x = x + 1;
    }
    
    y = y + 1;
  }
}




void setup() {
  size(w, h, P2D);
  
  int i = 0;
  int x;
  int y;
  
  while (i < initialPopulation) {
    x = floor(random(0, w-1));
    y = floor(random(0, h-1));
   
    this.grid[x][y] = 1;
    
    i = i + 1;
  }
  
  loop();
}

void draw() {
  updateGrid();  
  displayGrid();

}
