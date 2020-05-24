class Items {
  int itemX, itemY, itemX1, itemY1, widthOfItem, heightOfItem, placeInInventory, numberOfItems, numberOfItemsInInventory, row, t;
  boolean clicked, inInventory;
  PImage item;
  Items () {
    widthOfItem = 100;
    heightOfItem = 100;
    numberOfItems = 1;
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
  boolean inInventory () {
    if (numberOfItems > 0) {
      return true;
    } else {
      return false;
    }
  }
  void displayInInventory () {
    if (inventory.numberOfItemsInInventory > 6 && inventory.numberOfItemsInInventory < 12) {
      row = 2;
    }
    if (inventory.numberOfItemsInInventory > 12 && inventory.numberOfItemsInInventory < 18) {
      row = 3;
    }
    if (inventory.numberOfItemsInInventory > 18) {
      row = 4;
    }
    if (inInventory) {
      image (item, 350 + (inventory.numberOfItemsInInventory * inventory.widthOfRect), 80 + (row * inventory.heightOfRect));
    }
  }
}

//------------------------------------------------------------------------//
class Grass extends Items {
  Grass () {
    super();
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
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2 && mousePressed) {
      //if (t < 1) {
      numberOfItems++;
      print ("ahoooj");
      //t = 1;
      //}
    }
  }
}
//------------------------------------------------------------------------//
class Rock extends Items {
  Rock () {
    widthOfItem = 100;
    heightOfItem = 100;
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
}

//------------------------------------------------------------------------//
