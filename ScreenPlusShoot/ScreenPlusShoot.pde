backGround ba;
Ball b;
FireArray f;

void setup () {
  size (1300, 700, P2D);
  ba = new backGround();
  b = new Ball();
  f = new FireArray();
}


void draw () {
  background (255);
  ba.display();
  ba.endScreen();
  ba.ballBorders();
  ba.moveBall();
  ba.movePicture();
  f.display();
  ba.informations();
}



void keyPressed () {
  ba.keyMovePictureCONTROL();
  ba.keyMoveBallCONTROL();
  ba.debug();
} 


void keyReleased() {
  ba.keyDontMovePictureCONTROL();
  ba.keyDontMoveBallCONTROL();
}


void mousePressed() {
  f.clicked();
}
