Ball b;
FireArray f;
Enemy e;
info i;
Blood bl;
BloodArray ba;

void setup() {
  size (700, 700);
  b = new Ball();
  f = new FireArray();
  e = new Enemy();
  i = new info();
  bl = new Blood();
  ba = new BloodArray();
}


void draw() {
  background (255);
  f.display();
  e.placeOfEnemy();
  e.display();
  i.display();
  ba.display();
  rect (300, 300, 100, 100);
}



void mousePressed() {
  f.clicked();
  bl.clicked();
  ba.addBloodArray();
}

void mouseReleased() {
  bl.activateParticle = false;
}

void keyPressed() {
  e.changePlaceOfEnemy();
}
