class BossBackground {
  int backgroundX, backgroundY;
  boolean moveRightBackground, moveLeftBackground, moveUpBackground, moveDownBackground; //BACKGROUND
  boolean rightSide, leftSide, upSide, downSide; //PLAYER in the corner
  PImage background, backgroundAround;

  BossBackground () {
    background = requestImage("BossArena.png");
    backgroundAround = requestImage("BossArenaAround.png");
    backgroundX = 0;
    backgroundY = 0;
  }

  void display() {
    imageMode (CORNER);
    image (background, backgroundX, backgroundY);
  }

  void keyMoveBackgroundCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpBackground = true;
      bossPlayer.imageUp = true;
    }
    if (key == 'a' || key == 'A') {
      moveLeftBackground = true;
      bossPlayer.imageLeft = true;
    }
    if (key == 's' || key == 'S') {
      moveDownBackground = true;
      bossPlayer.imageDown = true;
    }
    if (key == 'd' || key == 'D') {
      moveRightBackground = true;
      bossPlayer.imageRight = true;
    }
  }

  void keyDontMoveBackgroundCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpBackground = false;
      bossPlayer.imageUp = false;
    }
    if (key == 'a' || key == 'A') {
      moveLeftBackground = false;
      bossPlayer.imageLeft = false;
    }
    if (key == 's' || key == 'S') {
      moveDownBackground = false;
      bossPlayer.imageDown = false;
    }
    if (key == 'd' || key == 'D') {
      moveRightBackground = false;
      bossPlayer.imageRight = false;
    }
  }

  void endBackground () {
    if (backgroundX >= 0) {
      moveLeftBackground = false;
      leftSide = true;
      rightSide = true;
    } else {
      leftSide = false;
      rightSide = false;
    }
    if (backgroundY >= 0) {
      moveUpBackground = false;
      upSide = true;
      downSide = true;
    } else {
      downSide = false;
      upSide = false;
    }
    if (backgroundY <= height - 1600) {
      moveDownBackground = false;
      downSide = true;
      upSide = true;
    }
    if (backgroundX <= width - 1600) {
      moveRightBackground = false;
      rightSide = true;
      leftSide = true;
    }
  }

  void moveBackground () {
    bossPlayer.nextX = bossPlayer.playerX;
    bossPlayer.nextY = bossPlayer.playerY + 80;
    if (moveRightBackground) {
      if (bossPlayer.playerX >= width/2 - 5) {
        bossPlayer.moveLeftPlayer = false;
        backgroundX -=  bossPlayer.speed;
      }
    }
    if (moveLeftBackground) {
      if (bossPlayer.playerX <= width/2 + 5) {
        bossPlayer.moveRightPlayer = false;
        backgroundX +=  bossPlayer.speed;
      }
    }
    if (moveUpBackground) {
      if (bossPlayer.playerY <= height/2 + 5) {
        bossPlayer.moveDownPlayer = false;
        backgroundY +=  bossPlayer.speed;
      }
    }
    if (moveDownBackground) {
      if (bossPlayer.playerY >= height/2 - 5) {
        bossPlayer.moveUpPlayer = false;
        backgroundY -=  bossPlayer.speed;
      }
    }
  }
}
