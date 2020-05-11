class ArrayRocksAndGrass {
  ArrayList <rocksAndGrass> ArrayG;
  ArrayList <rocksAndGrass> ArrayR;
  int numberOfG, numberOfR;
  ArrayRocksAndGrass () {
    ArrayG = new ArrayList <rocksAndGrass> ();
    ArrayR = new ArrayList <rocksAndGrass> ();
    for (numberOfR = 0; numberOfR < 20; numberOfR++) {
      ArrayR.add(new rocksAndGrass());
      ArrayG.add(new rocksAndGrass());
    }
  }

  void displayGrass() {
    for (int i = ArrayG.size() - 1; i >= 0; i--) {
      rocksAndGrass = ArrayG.get(i);
      rocksAndGrass.displayGrass();
      //while (hue(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) <= 127 && hue(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) >= 123 && saturation(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) >= 180 && saturation(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) <= 230 && brightness(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) >= 185  && brightness(get(rocksAndGrass.nextXGrass, rocksAndGrass.nextYGrass)) <= 220) {
      //rocksAndGrass.grassX1 = (int) random (0, 3400);
      //rocksAndGrass.grassY1 = (int) random (1000, 3400);
      //}
      if (mousePressed && rocksAndGrass.clickedGrass()) {
        ArrayG.remove(i);
      }
    }
  }

  void addNewGrass () {
    for (numberOfG = 0; numberOfG < 20; numberOfG++) {
      //if (key == 'c' || key == 'C') {
      ArrayG.add(new rocksAndGrass());
    }
  }

  void displayRock() {
    for (int i = ArrayR.size() - 1; i >= 0; i--) {
      rocksAndGrass = ArrayR.get(i);
      rocksAndGrass.displayRock();
      if (mousePressed && rocksAndGrass.clickedRock()) {
        ArrayR.remove(i);
      }
    }
  }

  void addNewRock () {
    for (numberOfR = 0; numberOfR < 20; numberOfR++) {
      //if (key == 'c' || key == 'C') {
      ArrayR.add(new rocksAndGrass());
    }
  }
}
