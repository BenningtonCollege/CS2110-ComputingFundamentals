int xPos;
int yPos;
int r, g, b;
int alpha;
int index;
int i = 0;
String word;

// The dictionary could also be read in from a file using the loadStrings() method

String[] dictionary = {"zoea",
                       "zoeae",
                       "zoeal",
                       "zoeas",
                       "zoecia",
                       "zoecium",
                       "zoftig",
                       "zoic",
                       "zoisite",
                       "zoisites",
                       "zombi",
                       "zombie",
                       "zombielike",
                       "zombies",
                       "zombification",
                       "zombifications",
                       "zombified",
                       "zombifies",
                       "zombify",
                       "zombifying",
                       "zombiism",
                       "zombiisms",
                       "zombis",
                       "zonal",
                       "zonally",
                       "zonary",
                       "zonate",
                       "zonated",
                       "zonation",
                       "zonations",
                       "zone",
                       "zoned",
                       "zoneless",
                       "zoner",
                       "zoners",
                       "zones",
                       "zonetime",
                       "zonetimes",
                       "zoning"
                      };



void setup() {
  size(400, 400);
  background(0, 0, 0);
}

void draw() {
  i = (i + 1) % 10;
  
  if (i == 0) {
    background(0, 0, 0);
    delay(1000);
  }  

  xPos = (int)random(width);
  yPos = (int)random(height);

  r = (int)random(255);
  g = (int)random(255);
  b = (int)random(255);
  alpha = (int)random(255);
  index = (int)random(dictionary.length);
  word = dictionary[index];

  fill(r, g, b, alpha);
  
  text(word, xPos, yPos);
    
}

