Ball b;
FireArray f;
void setup() {
  size (700, 700);
  b = new Ball();
  f = new FireArray();
}


void draw() {
  background (255);
  f.display();
}



void mousePressed() {
  f.clicked();
}
