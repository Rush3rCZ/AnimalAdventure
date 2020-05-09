class ArrayRocksAndGrass {
  ArrayList <rocksAndGrass> ArrayG;
  ArrayList <rocksAndGrass> ArrayR;
  int numberOfG, numberOfR;
  ArrayRocksAndGrass () {
    ArrayG = new ArrayList <rocksAndGrass> ();
    ArrayR = new ArrayList <rocksAndGrass> ();
  }

  void displayGrass() {
    for (int i = ArrayG.size() - 1; i >= 0; i--) {
      rocksAndGrass = ArrayG.get(i);
      rocksAndGrass.inWaterGrass();
      rocksAndGrass.displayGrass();
      if (mousePressed && rocksAndGrass.clickedGrass()) {
        ArrayG.remove(i);
      }
    }
  }

  void addNewGrass () {
    //for (numberOfG = 0; numberOfG < 2; numberOfG++) {
    if (key == 'c' || key == 'C') {
      ArrayG.add(new rocksAndGrass());
    }
  }

  void displayRock() {
    for (int i = ArrayR.size() - 1; i >= 0; i--) {
      rocksAndGrass = ArrayR.get(i);
      rocksAndGrass.inWaterRock();
      rocksAndGrass.displayRock();
      if (mousePressed && rocksAndGrass.clickedRock()) {
        ArrayR.remove(i);
      }
    }
  }

  void addNewRock () {
    //for (numberOfR = 0; numberOfR < 2; numberOfR++) {
    if (key == 'c' || key == 'C') {
      ArrayR.add(new rocksAndGrass());
    }
  }
}
