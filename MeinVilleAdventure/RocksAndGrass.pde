class rocksAndGrass {
  int rockX1, rockY1, grassX1, grassY1, rockX, rockY, grassX, grassY, widthOfGAndR, heightOfGAndR, nextXGrass, nextYGrass, nextXRock, nextYRock;
  PImage rock, grass;
  boolean clickedGrass, clickedRock;


  rocksAndGrass () {
    grass = loadImage("grass.png");
    rock = loadImage ("rock.png");
    widthOfGAndR = 80;
    heightOfGAndR = 80;
    //grass.resize (widthOfGAndR, heightOfGAndR);
    //rock.resize (widthOfGAndR, heightOfGAndR);
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



class ArrayRocksAndGrass {
  ArrayList <Grass> ArrayGrass;
  ArrayList <Rock> ArrayRock;
  int numberOfG, numberOfR;
  Grass grass;
  Rock rock;
  ArrayRocksAndGrass () {
    ArrayGrass = new ArrayList <Grass> ();
    ArrayRock = new ArrayList <Rock> ();
    for (numberOfR = 0; numberOfR < 20; numberOfR++) {
      ArrayRock.add(new Rock());
      ArrayGrass.add(new Grass());
    }
  }

  void displayGrass() {
    for (int i = ArrayGrass.size() - 1; i >= 0; i--) {
      grass = ArrayGrass.get(i);
      grass.display();
      if (mousePressed && grass.clicked()) {
        inventory.numberOfGrass++;
        ArrayGrass.remove(i);                                //--------------------------------------------//
      }
    }
  }

  void displayRock() {
    for (int i = ArrayRock.size() - 1; i >= 0; i--) {
      rock = ArrayRock.get(i);
      rock.display();
      if (mousePressed && rock.clicked()) {
        inventory.numberOfRocks++;
        ArrayRock.remove(i);
      }
    }
  }
}
