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
        ArrayGrass.remove(i);
      }
    }
  }

  void addNewGrass () {
    for (numberOfG = 0; numberOfG < 20; numberOfG++) {
      ArrayGrass.add(new Grass());
    }
  }

  void displayRock() {
    for (int i = ArrayRock.size() - 1; i >= 0; i--) {
      rock = ArrayRock.get(i);
      rock.display();
      if (mousePressed && rock.clicked()) {
        ArrayRock.remove(i);
        rock.numberOfItems++;
      }
    }
  }

  void addNewRock () {
    for (numberOfR = 0; numberOfR < 20; numberOfR++) {
      ArrayRock.add(new Rock());
    }
  }
}
