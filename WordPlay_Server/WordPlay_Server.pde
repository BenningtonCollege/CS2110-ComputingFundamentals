import processing.net.*;
Server myServer;

BufferedReader br;
String val = "aa";
ArrayList al = new ArrayList();

void setup() {
  size(200, 200);
  
  br = createReader("enable1.txt");
  
  while (val != null) {
    try {
      val = br.readLine();
      al.add(val);
    } catch (IOException e) {
    }
  }
  
  // Starts a myServer on port 5204
  myServer = new Server(this, 5204); 
}

void draw() {
  val = (String)al.get(floor(random(al.size()-1)));
  myServer.write(val + "\n");
}
