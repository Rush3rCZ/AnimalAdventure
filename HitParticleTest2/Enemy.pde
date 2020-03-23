class Enemy {
  int x;
  int y;
  int d;
  Enemy () {
    d = 60;
    x =(int) random(0 + d/2, width - d/2);
    y =(int) random (0 + d/2, height - d/2);
  }

  void display () {
    circle (x, y, d);
  }

  void placeOfEnemy() {
    if (x > 300 && x < 400) {
      x =(int) random (0 + d/2, width - d/2);
    }
    if (y > 300 && y < 400) {
      y =(int) random (0 + d/2, height - d/2);
    }
  }

  void changePlaceOfEnemy() {
    if (key == 'e' || key == 'E') {
      x =(int) random(0 + d/2, width - d/2);
      y =(int) random (0 + d/2, height - d/2);
    }
  }

  boolean isHit (Ball ball) {
    float diffBallEnemy = dist (ball.post.x, ball.post.y, e.x, e.y);
    if (diffBallEnemy < e.d/2 + b.d/2 && diffBallEnemy > 35) {
      return true;
    } else {
      return false;
    }
  }
}
