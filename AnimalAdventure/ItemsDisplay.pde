class itemDisplay {
  Grass grass;
  Rock rock;
  int rectCount, currentSlot [];
  boolean disGrass, disRocks;
  itemDisplay () {
    rectCount = 24;
    grass = new Grass();
    rock  = new Rock ();
    disGrass = false;
    disRocks = false;
    currentSlot = new int [rectCount];
  }
  void display () {
    if (inventoryIsOpened && disGrass) {
      for (int i = 0; i < rectCount; i++) {
        if (currentSlot [i] <= inventory.numberOfItemsInInventory) {
          if (currentSlot [i] == 0) {
            currentSlot[i] = i + 1;
          }
        }
      }
      image (grass.item, width/2, height/2);
    }
    if (inventoryIsOpened && disRocks) {
      image (rock.item, width/2, height/2);
    }
  }
}
