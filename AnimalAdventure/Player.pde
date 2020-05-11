class player {
  int playerX, playerY, speed, nextX, nextY, widthOfPlayer, heightOfPlayer;
  boolean moveRightPlayer, moveLeftPlayer, moveUpPlayer, moveDownPlayer; //PLAYER 
  PImage TeddyFrontSide, PennyFrontSide ;
  player () {
    speed = 5;
    playerX = width/2;
    playerY = height/2;
    widthOfPlayer = 190;
    heightOfPlayer = 190;
    TeddyFrontSide = loadImage ("TeddyFrontSide.png");
    PennyFrontSide = loadImage ("PennyFrontSide.png");
    TeddyFrontSide.resize( widthOfPlayer, heightOfPlayer);
    PennyFrontSide.resize( widthOfPlayer, heightOfPlayer);
  }

  void display () {
    imageMode(CENTER);
    if (object.tickPlace == 1) {
      image(TeddyFrontSide, playerX, playerY);
    }
    if (object.tickPlace == 2) {
      image(PennyFrontSide, playerX, playerY);
    }
    imageMode(CORNER);
  }


  void keyMovePlayerCONTROL () {
    if (background.rightSide) {
      if (key == 'd' || key == 'D') {
        moveRightPlayer = true;
      }
    }
    if (background.leftSide) {
      if (key == 'a' || key == 'A') {
        moveLeftPlayer = true;
      }
    }
    if (background.upSide) {
      if (key == 'w' || key == 'W') {
        moveUpPlayer = true;
      }
    }
    if (background.downSide) {
      if (key == 's' || key == 'S') {
        moveDownPlayer = true;
      }
    }
  }


  void keyDontMovePlayerCONTROL () {
    if (background.rightSide) {
      if (key == 'd' || key == 'D') {
        moveRightPlayer = false;
      }
    }
    if (background.leftSide) {
      if (key == 'a' || key == 'A') {
        moveLeftPlayer = false;
      }
    }
    if (background.upSide) {
      if (key == 'w' || key == 'W') {
        moveUpPlayer = false;
      }
    }
    if (background.downSide) {
      if (key == 's' || key == 'S') {
        moveDownPlayer = false;
      }
    }
  }

  void movePlayer () {
    if (background.rightSide && moveRightPlayer) {
      nextY = playerY;
      nextX = (playerX + widthOfPlayer/2) + speed;
      if (hue(get(nextX, nextY)) <= 127 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 180 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 220) {
      } else {
        playerX += speed;
      }
    }
    if (background.upSide  && moveUpPlayer) {
      nextX = playerX;
      nextY = (playerY - heightOfPlayer/2) - speed;
      if (hue(get(nextX, nextY)) <= 127 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 180 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 220) {
      } else {
        playerY -= speed;
      }
    }
    if (background.downSide && moveDownPlayer) {
      nextX = playerX;
      nextY = (playerY + heightOfPlayer/2) + speed;
      if (hue(get(nextX, nextY)) <= 127 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 180 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 220) {
      } else {
        playerY += speed;
      }
    }
    if (background.leftSide && moveLeftPlayer) {
      nextY = playerY;
      nextX = (playerX - widthOfPlayer/2) - speed;
      if (hue(get(nextX, nextY)) <= 127 && hue(get(nextX, nextY)) >= 123 && saturation(get(nextX, nextY)) >= 180 && saturation(get(nextX, nextY)) <= 230 && brightness(get(nextX, nextY)) >= 185  && brightness(get(nextX, nextY)) <= 220) {
      } else {
        playerX -= speed;
      }
    }
  }

  void playerBorders () {
    if (playerX - widthOfPlayer/4 < 0) {
      playerX += speed;
    }
    if (playerX + widthOfPlayer/4  > width) {
      playerX -= speed;
    }
    if (playerY - heightOfPlayer/2 < 0) {
      playerY += speed;
    }
    if (playerY + heightOfPlayer/2 > height) {
      playerY -= speed;
    }
  }

  void debugPlayer () {
    if (key == 'r' || key == 'R') {
      playerX = width/2;
      playerY = height/2;
    }
  }
}
