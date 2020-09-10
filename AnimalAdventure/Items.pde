class Items { //<>//
  int itemX, itemY, itemX1, itemY1, widthOfItem, heightOfItem, placeInInventory, t, inInventory, id;
  boolean clicked;
  PImage item;
  Items () {
    widthOfItem = 100;
    heightOfItem = 100;
    inInventory = 0;
  }

  void display() {
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }
  void inInventory () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      inInventory++;
      if (t < 1) {
        inventory.numberOfItemsInInventory++;
        t = 1;
      }
    }
  }
  void displayInInventory () {
    if (inventory.numberOfItemsInInventory < 7) {
      inventory.row = 1;
      inventory.col = inventory.numberOfItemsInInventory;
    }
    if (inventory.numberOfItemsInInventory > 6 && inventory.numberOfItemsInInventory < 13) {
      inventory.row = 2;
      inventory.col = inventory.numberOfItemsInInventory - 6;
    }
    if (inventory.numberOfItemsInInventory > 12 && inventory.numberOfItemsInInventory < 19) {
      inventory.row = 3;
      inventory.col = inventory.numberOfItemsInInventory - 12;
    }
    if (inventory.numberOfItemsInInventory > 18) {
      inventory.row = 4;
      inventory.col = inventory.numberOfItemsInInventory - 18;
    }
    if (inventoryIsOpened && inInventory > 0) {
      image (item, width/2, height/2);
    }
  }
  
  void displayInv(int col, int row, int w, int h){
    imageMode (CORNER);
    image (item, 350+100+col*w, 80+90+row*h);
    imageMode (CENTER);
  }
  
  
}

//------------------------------------------------------------------------//
class Grass extends Items {
  Grass () {
    super();
    id = 1;
    item = loadImage("grass.png");
    item.resize (widthOfItem, heightOfItem);
    itemX1 = (int) random (0, 3400);
    itemY1 = (int) random (1000, 3400);
  }

  void display () {
    itemX = background.backgroundX + itemX1;
    itemY = background.backgroundY + itemY1;
    imageMode (CENTER);
    image (item, itemX, itemY);
    imageMode (CORNER);
  }

  void inInventory () {
    if (mousePressed && mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      inventory.items.add(this);
      
      
      if (t < 1) {
        inventory.numberOfGrass++;
        if (inventory.tGrass <1) {
          inventory.numberOfItemsInInventory++;
          inventory.tGrass  = 1;
        } 
        t = 1;
      }
    }
  }
  

  void displayInInventory () {
    if (inventory.numberOfItemsInInventory < 7) {
      inventory.row = 1;
      inventory.col = inventory.numberOfItemsInInventory;
    }
    if (inventory.numberOfItemsInInventory > 6 && inventory.numberOfItemsInInventory < 13) {
      inventory.row = 2;
      inventory.col = inventory.numberOfItemsInInventory - 6;
    }
    if (inventory.numberOfItemsInInventory > 12 && inventory.numberOfItemsInInventory < 19) {
      inventory.row = 3;
      inventory.col = inventory.numberOfItemsInInventory - 12;
    }
    if (inventory.numberOfItemsInInventory > 18) {
      inventory.row = 4;
      inventory.col = inventory.numberOfItemsInInventory - 18;
    }
    if (inventory.numberOfGrass > 0) {
      itemDisplay.disGrass = true;
    }
  }
}
//------------------------------------------------------------------------//
class Rock extends Items {
  Rock () {
    super();
    id = 2;
    item = loadImage ("rock.png");
    item.resize (widthOfItem, heightOfItem);
    itemX1 = (int) random (0, 3400);
    itemY1 = (int) random (1000, 3400);
  }

  void display () {
    itemX = background.backgroundX + itemX1;
    itemY = background.backgroundY + itemY1;
    imageMode (CENTER);
    image (item, itemX, itemY);
    imageMode (CORNER);
  }

  void inInventory () {
    if (mousePressed && mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      inventory.items.add(this);
      
      if (t < 1) {
        inventory.numberOfRocks++;
        if (inventory.tRocks < 1) {
          inventory.numberOfItemsInInventory++;
          inventory.tRocks  = 1;
        } 
        t = 1;
      }
    }
  }

  void displayInInventory () {
    if (inventory.numberOfItemsInInventory < 7) {
      inventory.row = 1;
      inventory.col = inventory.numberOfItemsInInventory;
    }
    if (inventory.numberOfItemsInInventory > 6 && inventory.numberOfItemsInInventory < 13) {
      inventory.row = 2;
      inventory.col = inventory.numberOfItemsInInventory - 6;
    }
    if (inventory.numberOfItemsInInventory > 12 && inventory.numberOfItemsInInventory < 19) {
      inventory.row = 3;
      inventory.col = inventory.numberOfItemsInInventory - 12;
    }
    if (inventory.numberOfItemsInInventory > 18) {
      inventory.row = 4;
      inventory.col = inventory.numberOfItemsInInventory - 18;
    }
    if (inventory.numberOfRocks > 0) {
      itemDisplay.disRocks = true;
    }
  }
}
//------------------------------------------------------------------------//
