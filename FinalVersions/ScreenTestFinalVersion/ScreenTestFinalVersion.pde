backGround ba;
void setup () {
  size (700, 700, P2D);
  ba = new backGround();
}


void draw () {
  background (255);
  ba.display();
  ba.endScreen();
  ba.ballBorders();
  ba.moveBall();
  ba.movePicture();
  //ba.informations();
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
