class BossBackground {
  int backgroundX, backgroundY;
  boolean moveRightBackground, moveLeftBackground, moveUpBackground, moveDownBackground; //BACKGROUND
  boolean rightSide, leftSide, upSide, downSide; //PLAYER in the corner
  PImage background;

  BossBackground () {
    background = requestImage("BossArena.png");
    backgroundX = -100;
    backgroundY = -700;
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
    if (backgroundY <= 700 - 1600) {
      moveDownBackground = false;
      downSide = true;
      upSide = true;
    }
    if (backgroundX <= 1300 - 1600) {
      moveRightBackground = false;
      rightSide = true;
      leftSide = true;
    }
  }

  void moveBackground () {
    if (moveRightBackground) {
      if (player.playerX >= width/2 - 5) {
        bossPlayer.moveLeftPlayer = false;
        bossPlayer.nextY =  bossPlayer.playerY;
        bossPlayer.nextX = (bossPlayer.playerX +  bossPlayer.heightOfPlayer/2) +  bossPlayer.speed;
        if (hue(get( bossPlayer.nextX, bossPlayer.nextY)) <= 127 && hue(get( bossPlayer.nextX, bossPlayer.nextY)) >= 123 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) >= 180 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) <= 230 && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) >= 185  && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) <= 220) {
        } else {
          backgroundX -=  player.speed;
        }
      }
    }
    if (moveLeftBackground) {
      if (player.playerX <= width/2 + 5) {
        bossPlayer.moveRightPlayer = false;
        bossPlayer.nextY =  bossPlayer.playerY;
        bossPlayer.nextX = (bossPlayer.playerX -  bossPlayer.heightOfPlayer/2) -  bossPlayer.speed;
        if (hue(get( bossPlayer.nextX, bossPlayer.nextY)) <= 127 && hue(get( bossPlayer.nextX, bossPlayer.nextY)) >= 123 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) >= 180 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) <= 230 && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) >= 185  && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) <= 220) {
        } else {
          backgroundX +=  player.speed;
        }
      }
    }
    if (moveUpBackground) {
      if (bossPlayer.playerY <= height/2 + 5) {
        bossPlayer.moveDownPlayer = false;
        bossPlayer.nextX =  bossPlayer.playerX;
        bossPlayer.nextY = (bossPlayer.playerY -  bossPlayer.heightOfPlayer/2) -  bossPlayer.speed;
        if (hue(get( bossPlayer.nextX, bossPlayer.nextY)) <= 127 && hue(get( bossPlayer.nextX, bossPlayer.nextY)) >= 123 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) >= 180 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) <= 230 && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) >= 185  && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) <= 220) {
        } else {
          backgroundY +=  player.speed;
        }
      }
    }
    if (moveDownBackground) {
      if (bossPlayer.playerY >= height/2 - 5) {
        bossPlayer.moveUpPlayer = false;
        bossPlayer.nextX =  bossPlayer.playerX;
        bossPlayer.nextY = (bossPlayer.playerY +  bossPlayer.heightOfPlayer/2) +  bossPlayer.speed;
        if (hue(get( bossPlayer.nextX, bossPlayer.nextY)) <= 127 && hue(get( bossPlayer.nextX, bossPlayer.nextY)) >= 123 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) >= 180 && saturation(get( bossPlayer.nextX, bossPlayer.nextY)) <= 230 && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) >= 185  && brightness(get( bossPlayer.nextX, bossPlayer.nextY)) <= 220) {
        } else {
          backgroundY -=  player.speed;
        }
      }
    }
  }
}
