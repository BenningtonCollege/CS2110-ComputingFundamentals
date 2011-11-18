These are intended to serve as examples for you to examine and then design code that would offer the same functionality.

Remember to consult the Processing API often (Google for it).


Generally, you should expect that I would prefer more general solutions rather than overfit (specific) solutions. So, 

  int w = 10;
  int h = 10;
  
  void setup() {
    size(400, 400);    
  }

  void draw() {
    ellipse(width/2, height/2, w, h);
  }
  
would be preferred over 

  void setup() {
    size(400, 400);    
  }

  void draw() {
    ellipse(200, 200, 10, 10); 
  }
  
because in the ellipse command 200 and 10 are "magic numbers"– i.e., they are based on some assumption you've made about the application or on some special knowledge you have (e.g., you're assuming that the application will always be 400 pixels width and 400 pixels tall).