import interfascia.*;

GUIController c;
IFTextField t;
int tWidth = 150;

void setup() {
  size(500, 500);
}

void draw() {
  background(100);

  int x = (int)random(width);
  int y = (int)random(height);
  ellipse(x, y, 10, 10);
}


void keyPressed() {
  if (c == null) {
    c = new GUIController(this);

    // create the textField and move it just off screen
    t = new IFTextField("inputArea", width + 1, height + 1, tWidth);

    c.add(t);

    t.addActionListener(this);
  }
  
  c.requestFocus(t);
}


void actionPerformed(GUIEvent e) {
  if (e.getMessage().equals("Modified")) {
    // move the textField into the center of the window
    t.setPosition((width/2) - (tWidth/2), height/2);
  }

  if (e.getMessage().equals("Completed")) {
    // do something with the value typed into the field
    println(t.getValue());
    t.setValue("");

    // move the textField off screen
    t.setPosition(width + 1, height + 1);
  }
}

