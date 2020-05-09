class rocksAndGrass {
  int rockX1, rockY1, grassX1, grassY1, rockX, rockY, grassX, grassY, widthOfGAndR, heightOfGAndR, nextXGrass, nextYGrass, nextXRock, nextYRock;
  PImage rock, grass;
  boolean clickedGrass, clickedRock;
  rocksAndGrass () {
    grass = loadImage("grass.png");
    rock = loadImage ("rock.png");
    widthOfGAndR = 100;
    heightOfGAndR = 100;
    grass.resize (widthOfGAndR, heightOfGAndR);
    rock.resize (widthOfGAndR, heightOfGAndR);
    rockX1 = (int) random (0, 3400);
    rockY1 = (int) random (1000, 3400);
    grassX1 = (int) random (0, 3400);
    grassY1 = (int) random (1000, 3400);
  }

  void displayRock() {
    rockX = background.backgroundX + rockX1;
    rockY = background.backgroundY + rockY1;
    imageMode (CENTER);
    image (rock, rockX, rockY);
    imageMode (CORNER);
  }
  
  void displayGrass() {
    grassX = background.backgroundX + grassX1;
    grassY = background.backgroundY + grassY1;
    imageMode (CENTER);
    image (grass, grassX, grassY);
    imageMode (CORNER);
  }


  void inWaterGrass () {
    nextXGrass = grassX;
    nextYGrass = grassY +60;
    if (hue(get(nextXGrass, nextYGrass)) <= 126 && hue(get(nextXGrass, nextYGrass)) >= 123 && saturation(get(nextXGrass, nextYGrass)) >= 200 && saturation(get(nextXGrass, nextYGrass)) <= 230 && brightness(get(nextXGrass, nextYGrass)) >= 185  && brightness(get(nextXGrass, nextYGrass)) <= 210) {
      grassX1 = (int) random (0, 3400);
      grassY1 = (int) random (1000, 3400);
    }
  }
  
  void inWaterRock () {
    nextXRock = rockX;
    nextYRock = rockY +60;
    if (hue(get(nextXRock, nextYRock)) <= 126 && hue(get(nextXRock, nextYRock)) >= 123 && saturation(get(nextXRock, nextYRock)) >= 200 && saturation(get(nextXRock, nextYRock)) <= 230 && brightness(get(nextXRock, nextYRock)) >= 185  && brightness(get(nextXRock, nextYRock)) <= 210) {
      rockX1 = (int) random (0, 3400);
      rockY1 = (int) random (1000, 3400);
    }
  }

  void replace() {
    if (key == 'f' || key == 'F') {
      rockX1 = (int) random (0, 3400);
      rockY1 = (int) random (1000, 3400);
      grassX1 = (int) random (0, 3400);
      grassY1 = (int) random (1000, 3400);
    }
  }

  boolean clickedGrass () {
    if (mouseX < grassX + widthOfGAndR/2 && mouseX > grassX - widthOfGAndR/2 && mouseY < grassY + heightOfGAndR/2 && mouseY > grassY - heightOfGAndR/2) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean clickedRock () {
    if (mouseX < rockX + widthOfGAndR/2 && mouseX > rockX - widthOfGAndR/2 && mouseY < rockY + heightOfGAndR/2 && mouseY > rockY - heightOfGAndR/2) {
      return true;
    } else {
      return false;
    }
  }
}
