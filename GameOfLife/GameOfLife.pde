int PREVIOUS = 0;
int CURRENT  = 1;
int sx, sy; 
float density = 0.5; 
int[][][] world;
 
void setup() 
{ 
  size(640, 400, P2D);
  frameRate(12);
  sx = width;
  sy = height;
  world = new int[sx][sy][2]; 
   
  // ?? 
  for (int i = 0; i < sx * sy * density; i++) { 
    world[(int)random(sx)][(int)random(sy)][CURRENT] = 1; 
  } 
} 
 
void draw() 
{ 
  background(0); 
  
  // ?? 
  for (int x = 0; x < sx; x=x+1) { 
    for (int y = 0; y < sy; y=y+1) { 
      if ((world[x][y][CURRENT] == 1) || 
          (world[x][y][CURRENT] == 0 && world[x][y][PREVIOUS] == 1)) 
      { 
        world[x][y][PREVIOUS] = 1; 
        set(x, y, #FFFFFF); 
      } 
      if (world[x][y][CURRENT] == -1) 
      { 
        world[x][y][PREVIOUS] = 0; 
      } 
      world[x][y][CURRENT] = 0; 
    } 
  } 
  
  
  // ?? 
  for (int x = 1; x < sx-1; x=x+1) { 
    for (int y = 1; y < sy-1; y=y+1) { 
      int count = neighbors(x, y); 
      if (count == 3 && world[x][y][PREVIOUS] == 0) 
      { 
        world[x][y][CURRENT] = 1; 
      } 
      if ((count < 2 || count > 3) && world[x][y][PREVIOUS] == 1) 
     { 
        world[x][y][CURRENT] = -1; 
      } 
    } 
  } 
} 
 
int neighbors(int x, int y) 
{ 
  return world[x + 1][y]    [PREVIOUS] + 
         world[x - 1][y]    [PREVIOUS] + 

         world[x]    [y + 1][PREVIOUS] + 
         world[x]    [y - 1][PREVIOUS] + 

         world[x + 1][y + 1][PREVIOUS] + 
         world[x - 1][y + 1][PREVIOUS] + 
         
         world[x - 1][y - 1][PREVIOUS] + 
         world[x + 1][y - 1][PREVIOUS]; 
} 

void mouseClicked() {
  if ((mouseX > 2) && (mouseX < sx)) {
    if ((mouseY > 3) && (mouseY < sy)) {
      world[mouseX-2][mouseY-3][PREVIOUS] = 1; 
      set(mouseX-2, mouseY-3, #FF0000); 
    }
  }
}

void mouseDragged() {
  if ((mouseX > 2) && (mouseX < sx)) {
    if ((mouseY > 3) && (mouseY < sy)) {
      world[mouseX-2][mouseY-3][PREVIOUS] = 1; 
      set(mouseX-2, mouseY-3, #FF0000); 
    }
  }
}

