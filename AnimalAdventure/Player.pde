class player {
  int playerX, playerY, speed, nextX, nextY, widthOfPlayer, heightOfPlayer, HP, healthBarX, healthBarY;
  boolean moveRightPlayer, moveLeftPlayer, moveUpPlayer, moveDownPlayer; //PLAYER 
  PImage TeddyFrontSide, PennyFrontSide, healthBar, healthBarFill ;
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
    healthBar = loadImage ("healthBar.png");
    healthBarFill = loadImage ("healthBarFill.png");
    healthBarX = 20;
    healthBarY = height - 75;
    HP = 100;
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

  void healthBar () {
    image (healthBarFill, healthBarX, healthBarY);
    if (HP > 50) {
      stroke (94, 255, 97);
      fill (94, 255, 97);
    }
    if (HP <=50) {
      stroke (255, 216, 0);
      fill (255, 216, 0);
    }
    if (HP <= 30) {
      stroke (255, 106, 0);
      fill (255, 106, 0);
    }
    if (HP <= 10) {
      stroke (255, 0, 0);
      fill (255, 0, 0);
    }
    rect (115, 625, HP * 3.48, 53);
    noStroke();
    noFill();
    image (healthBar, healthBarX, healthBarY);
    if (HP < 0) {
      HP = 0;
    }
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
