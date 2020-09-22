class backGround {
  int backgroundX, backgroundY;
  boolean moveRightBackground, moveLeftBackground, moveUpBackground, moveDownBackground; //BACKGROUND
  boolean rightSide, leftSide, upSide, downSide; //PLAYER in the corner
  PImage background;

  backGround () {
    background = requestImage("BackGround.png");
    backgroundX = -1;
    backgroundY = -1;
  }

  void display() {
    imageMode (CORNER);
    image (background, backgroundX, backgroundY);
  }

  void keyMoveBackgroundCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpBackground = true;
      player.imageUp = true;
    }
    if (key == 'a' || key == 'A') {
      moveLeftBackground = true;
      player.imageLeft = true;
    }
    if (key == 's' || key == 'S') {
      moveDownBackground = true;
      player.imageDown = true;
    }
    if (key == 'd' || key == 'D') {
      moveRightBackground = true;
      player.imageRight = true;
    }
  }

  void keyDontMoveBackgroundCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpBackground = false;
      player.imageUp = false;
    }
    if (key == 'a' || key == 'A') {
      moveLeftBackground = false;
      player.imageLeft = false;
    }
    if (key == 's' || key == 'S') {
      moveDownBackground = false;
      player.imageDown = false;
    }
    if (key == 'd' || key == 'D') {
      moveRightBackground = false;
      player.imageRight = false;
    }
  }

  void endBackground () {
    if (backgroundX > 0) {
      moveLeftBackground = false;
      leftSide = true;
      rightSide = true;
    } else {
      leftSide = false;
      rightSide = false;
    }
    if (backgroundY > 0) {
      moveUpBackground = false;
      upSide = true;
      downSide = true;
    } else {
      downSide = false;
      upSide = false;
    }
    if (backgroundY < - 2800) {
      moveDownBackground = false;
      downSide = true;
      upSide = true;
    } 
    if (backgroundX < - 2100) {
      moveRightBackground = false;
      rightSide = true;
      leftSide = true;
    }
  }

  void moveBackground () {
    if (moveRightBackground) {
      if (player.playerX >= width/2 - 6) {
        player.moveLeftPlayer = false;
        player.nextY =  player.playerY;
        player.nextX = (player.playerX +  player.heightOfPlayer/2) +  player.speed;
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          backgroundX -=  player.speed;
        }
      }
    }
    if (moveLeftBackground) {
      if (player.playerX <= width/2 + 6) {
        player.moveRightPlayer = false;
        player.nextY =  player.playerY;
        player.nextX = (player.playerX -  player.heightOfPlayer/2) -  player.speed;
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          backgroundX +=  player.speed;
        }
      }
    }
    if (moveUpBackground) {
      if (player.playerY <= height/2 + 6) {
        player.moveDownPlayer = false;
        player.nextX =  player.playerX;
        player.nextY = (player.playerY -  player.heightOfPlayer/2) -  player.speed;
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          backgroundY +=  player.speed;
        }
      }
    }
    if (moveDownBackground) {
      if (player.playerY >= height/2 - 6) {
        player.moveUpPlayer = false;
        player.nextX =  player.playerX;
        player.nextY = (player.playerY +  player.heightOfPlayer/2) +  player.speed;
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          backgroundY -=  player.speed;
        }
      }
    }
  }
}
