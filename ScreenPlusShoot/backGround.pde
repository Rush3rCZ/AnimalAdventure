class backGround {
  int pictureX, pictureY, ballX, ballY, speed, d;
  PImage bg, player; //PICTURES
  boolean moveRightPicture, moveLeftPicture, moveUpPicture, moveDownPicture; //BACKGROUND
  boolean moveRightBall, moveLeftBall, moveUpBall, moveDownBall; //BALL  
  boolean rightSide, leftSide, upSide, downSide; //Screen in the corner
  
  backGround() {
    ballX = width/2;
    ballY = height/2;
    pictureX = -1;
    pictureY = -1 ;
    speed = 5;
    d = 70;
    player = loadImage ("TeddyFrontSide.png");
    bg = loadImage ("BackGround.png");
  }

  void keyMovePictureCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpPicture = true;
    }
    if (key == 'a' || key == 'A') {
      moveLeftPicture = true;
    }
    if (key == 's' || key == 'S') {
      moveDownPicture = true;
    }
    if (key == 'd' || key == 'D') {
      moveRightPicture = true;
    }
  }


  void keyDontMovePictureCONTROL () {
    if (key == 'w' || key == 'W') {
      moveUpPicture = false;
    }
    if (key == 'a' || key == 'A') {
      moveLeftPicture = false;
    }
    if (key == 's' || key == 'S') {
      moveDownPicture = false;
    }
    if (key == 'd' || key == 'D') {
      moveRightPicture = false;
    }
  }


  void keyMoveBallCONTROL () {
    if (rightSide) {
      if (key == 'd' || key == 'D') {
        moveRightBall = true;
      }
    }
    if (leftSide) {
      if (key == 'a' || key == 'A') {
        moveLeftBall = true;
      }
    }
    if (upSide) {
      if (key == 'w' || key == 'W') {
        moveUpBall = true;
      }
    }
    if (downSide) {
      if (key == 's' || key == 'S') {
        moveDownBall = true;
      }
    }
  }


  void keyDontMoveBallCONTROL () {
    if (rightSide) {
      if (key == 'd' || key == 'D') {
        moveRightBall = false;
      }
    }
    if (leftSide) {
      if (key == 'a' || key == 'A') {
        moveLeftBall = false;
      }
    }
    if (upSide) {
      if (key == 'w' || key == 'W') {
        moveUpBall = false;
      }
    }
    if (downSide) {
      if (key == 's' || key == 'S') {
        moveDownBall = false;
      }
    }
  }


  void movePicture () {
    if (moveRightPicture) {
      if (ballX >= width/2 - 6) {
        moveLeftBall = false;
        pictureX = pictureX - speed;
      }
    }
    if (moveLeftPicture) {
      if (ballX <= width/2 + 6) {
        moveRightBall = false;
        pictureX = pictureX + speed;
      }
    }
    if (moveUpPicture) {
      if (ballY <= height/2 + 6) {
        moveDownBall = false;
        pictureY = pictureY  + speed;
      }
    }
    if (moveDownPicture) {
      if (ballY >= height/2 - 6) {
        moveUpBall = false;
        pictureY = pictureY  - speed;
      }
    }
  }


  void moveBall () {
    if (rightSide && moveRightBall) {
      ballX = ballX + speed;
    }
    if (upSide  && moveUpBall) {
      ballY = ballY - speed;
    }
    if (downSide && moveDownBall) {
      ballY = ballY + speed;
    }

    if (leftSide && moveLeftBall) {
      ballX = ballX - speed;
    }
  }


  void ballBorders () {
    if (ballX < 0) {
      ballX = ballX + speed;
    }
    if (ballX > width) {
      ballX = ballX - speed;
    }
    if (ballY < 0) {
      ballY = ballY + speed;
    }
    if (ballY > height) {
      ballY = ballY - speed;
    }
  }


  void endScreen () {
    if (pictureX > 0) {
      moveLeftPicture = false;
      leftSide = true;
      rightSide = true;
    } else {
      leftSide = false;
      rightSide = false;
    }
    if (pictureY > 0) {
      moveUpPicture = false;
      upSide = true;
      downSide = true;
    } else {
      downSide = false;
      upSide = false;
    }
    if (pictureY < - 2800) {
      moveDownPicture = false;
      downSide = true;
      upSide = true;
    } 
    if (pictureX < - 2100) {
      moveRightPicture = false;
      rightSide = true;
      leftSide = true;
    }
  }


  void debug () {
    if (key == 'r' || key == 'R') {
      ballX = width/2;
      ballY = height/2;
    }
  }

  void informations () {
    fill (255, 0, 0);
    text ("ballX:  " + ballX, 20, 100 - 60);
    text ("ballY:  " + ballY, 20, 100 - 40);
    text ("pictureX:  " + pictureX, 20, 100);
    text ("pictureY:  " + pictureY, 20, 100 + 20);
    text ("rightSide:  " + rightSide, 20, 100 + 60);
    text ("leftSide:  " + leftSide, 20, 100 + 80);
    text ("upSide:  " + upSide, 20, 100 + 100);
    text ("downSide:  " + downSide, 20, 100 + 120);
    text ("moveRightPicture:  " + moveRightPicture, 20, 100 + 160);
    text ("moveLeftPicture:  " + moveLeftPicture, 20, 100 + 180);
    text ("moveUpPicture:  " + moveUpPicture, 20, 100 + 200);
    text ("moveDownPicture:  " + moveDownPicture, 20, 100 + 220);
    text ("moveRightBall:  " + moveRightBall, 20, 100 + 260);
    text ("moveLeftBall:  " + moveLeftBall, 20, 100 + 280);
    text ("moveUpBall:  " + moveUpBall, 20, 100 + 300);
    text ("moveDownBall:  " + moveDownBall, 20, 100 + 320);
    noFill();
  }


  void display() {
    background (255);
    image (bg, pictureX, pictureY);
    fill(255);
    imageMode(CENTER);
    player.resize(140,200);
    circle (ballX, ballY, d);
    image(player, ballX, ballY);
    imageMode(CORNER);
    noFill();
  }
}
