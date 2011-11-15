import processing.net.*; 
Client myClient; 
String dataIn = ""; 
 
void setup() { 
  size(screen.width, screen.height); 
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port
  myClient = new Client(this, "127.0.0.1", 5204); 
} 
 
int i = 0;
void draw() {
  if ( i == 0 ) {
    background(100);
    delay(1000);
  }

  i = (i + 1) % 25;

  if (myClient.available() > 0) { 
    dataIn = myClient.readStringUntil(10); 
  } 
  
  textSize(random(30) + 10);
  text(dataIn, random(width), random(height)); 
}
