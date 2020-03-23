class Blood {
  PVector position, direction, speed;
  int d, ballX, ballY;
  boolean activateParticle;
  boolean enemyHited;

  Blood() {
    speed = new PVector(0, 0);
    position = new PVector(0, 0);
    direction = new PVector(0, 0);
    d = 10;
    enemyHited = false;
    ballX = width/2;
    ballY = height/2;
  }

  void updateBlood () {
    float diffMeEnemy = dist (ballX, ballY, e.x, e.y);
    float diffMeShot = dist (b.post.x, b.post.y, ballX, ballY);
    if (diffMeShot < diffMeEnemy + 1) {
      position = b.post.copy();
      direction = b.difference.copy();
      enemyHited = true;
    }
  }




  void update2 () {
    position.sub(speed);
  }

  void display() {
    if (enemyHited) {
      fill (0);
      circle (position.x, position.y, d);
      noFill();
    }
  }

  void clicked () {
    activateParticle = true;
  }

  void speedDefinition() {
    if (activateParticle == true) {
      if (mouseX > width/2 && mouseY < height/2) {
        speed = new PVector(random (0, 1), random (-1, 0));
      }
      if (mouseX < width/2 && mouseY < height/2) {
        speed = new PVector(random (-1, 0), random (-1, 0));
      }
      if (mouseX > width/2 && mouseY > height/2) {
        speed = new PVector(random (0, 1), random (0, 1));
      }
      if (mouseX < width/2 && mouseY > height/2) {
        speed = new PVector(random (-1, 0), random (0, 1));
      }
    }
  }
}
