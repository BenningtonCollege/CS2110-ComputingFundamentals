import processing.net.*;

int port = 5204;       
Server myServer;        

void setup()
{
  size(400, 400);
  background(0);
  myServer = new Server(this, port);
}

void draw()
{
  // Get the next available client
  Client thisClient = myServer.available();
  // If the client is not null, and says something, display what it said
  if (thisClient !=null) {
    String whatClientSaid = thisClient.readStringUntil(10);
    if (whatClientSaid != null) {
      println(thisClient.ip() + ": " + whatClientSaid);
    } 
  } 
}

