class player {
  int playerX, playerY, speed, nextX, nextY, widthOfPlayer, heightOfPlayer, HP, healthBarX, healthBarY, damage;
  boolean moveRightPlayer, moveLeftPlayer, moveUpPlayer, moveDownPlayer, imageUp, imageDown, imageRight, imageLeft; //PLAYER 
  PImage TeddyFrontSide, TeddyBackSide, TeddyRightSide, TeddyLeftSide, PennyFrontSide, PennyBackSide, PennyRightSide, PennyLeftSide, healthBar, healthBarFill ;
  player () {
    speed = 5;
    playerX = width/2;
    playerY = height/2;
    widthOfPlayer = 190;
    heightOfPlayer = 190;

    TeddyFrontSide = loadImage ("TeddyFrontSide.png");
    TeddyBackSide = loadImage ("TeddyBackSide.png");
    TeddyRightSide = loadImage ("TeddyRightSide.png");
    TeddyLeftSide = loadImage ("TeddyLeftSide.png");

    PennyFrontSide = loadImage ("PennyFrontSide.png");
    PennyBackSide = loadImage ("PennyBackSide.png");
    PennyRightSide = loadImage ("PennyRightSide.png");
    PennyLeftSide = loadImage ("PennyLeftSide.png");

    TeddyFrontSide.resize( widthOfPlayer, heightOfPlayer);
    TeddyBackSide.resize( widthOfPlayer, heightOfPlayer);
    TeddyRightSide.resize( widthOfPlayer, heightOfPlayer);
    TeddyLeftSide.resize( widthOfPlayer, heightOfPlayer);

    PennyFrontSide.resize( widthOfPlayer, heightOfPlayer);
    PennyBackSide.resize( widthOfPlayer, heightOfPlayer);
    PennyRightSide.resize( widthOfPlayer, heightOfPlayer);
    PennyLeftSide.resize( widthOfPlayer, heightOfPlayer);

    healthBar = loadImage ("healthBar.png");
    healthBarFill = loadImage ("healthBarFill.png");
    healthBarX = 20;
    healthBarY = height - 75;
    HP = 100;
  }

  void display () {
    imageMode(CENTER);
    if (object.tickPlace == 1) {
      if (!imageRight && !imageDown && !imageUp && !imageLeft) {
        image(TeddyFrontSide, playerX, playerY);
      } else {
        if (imageLeft && imageDown || imageLeft && imageUp) {
          image(TeddyLeftSide, playerX, playerY);
        } else {
          if (imageRight && imageDown || imageRight && imageUp) {
            image(TeddyRightSide, playerX, playerY);
          } else {
            if (imageDown) {
              image(TeddyFrontSide, playerX, playerY);
            } else {
              if (imageUp) {
                image(TeddyBackSide, playerX, playerY);
              } else {
                if (imageRight) {
                  image(TeddyRightSide, playerX, playerY);
                } else {
                  if (imageLeft) {
                    image(TeddyLeftSide, playerX, playerY);
                  }
                }
              }
            }
          }
        }
      }
    }
    if (object.tickPlace == 2) {
      if (!imageRight && !imageDown && !imageUp && !imageLeft) {
        image(PennyFrontSide, playerX, playerY);
      } else {
        if (imageLeft && imageDown || imageLeft && imageUp) {
          image(PennyLeftSide, playerX, playerY);
        } else {
          if (imageRight && imageDown || imageRight && imageUp) {
            image(PennyRightSide, playerX, playerY);
          } else {
            if (imageDown) {
              image(PennyFrontSide, playerX, playerY);
            } else {
              if (imageUp) {
                image(PennyBackSide, playerX, playerY);
              } else {
                if (imageRight) {
                  image(PennyRightSide, playerX, playerY);
                } else {
                  if (imageLeft) {
                    image(PennyLeftSide, playerX, playerY);
                  }
                }
              }
            }
          }
        }
      }
    }
    imageMode(CORNER);
  }

  void healthBar () {
    if (HP < 0) {
      HP = 0;
    }
    if (HP > 100) {
      HP = 100;
    }
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
    if (!background.rightSide) {
      //fill (255, 0, 0);
      //circle (playerX + 50, playerY, 30);
      if (playerX <= 640) {
        playerX = 650;
      }
    }
    if (!background.leftSide) {
      //fill (0, 255, 0);
      //circle (playerX - 50, playerY, 30);
      if (playerX >= 660) {
        playerX = 650;
      }
    }
    if (!background.upSide) {
      //fill (0, 0, 255);
      //circle (playerX, playerY - 120, 30);
      if (playerY >= 360) {
        playerY = 350;
      }
    }
    if (!background.downSide) {
      //fill (0);
      //circle (playerX, playerY + 120, 30);
      if (playerY <= 340) {
        playerY = 350;
      }
    }
  }
}
