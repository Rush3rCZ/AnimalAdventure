class inventory {
  int widthCount, heightCount, postX, postY, widthOfRect, heightOfRect, mouseWidth, mouseHeight, numberOfGrass, numberOfRocks, col, row, numberOfItemsInInventory, tGrass, tRocks; 
  PImage inventoryUp, inventoryDown, inInventorySlot;
  ArrayList <Items> items;

  inventory () {
    items = new ArrayList <Items> ();
    inventoryUp = loadImage ("inventoryUp.png");
    inventoryDown = loadImage ("inventoryDown.png");
    inInventorySlot = loadImage ("inInventorySlot.png");
    // fill (243, 236, 225);
    widthCount = 6;
    heightCount = 4;
    widthOfRect = 100;
    heightOfRect = 90;
    mouseWidth = 1;
    mouseHeight = 1;
    postX = 1;
    postY = 1;
  }

  void display() {
    if (inventoryIsOpened) {
      imageMode(CENTER);
      image (inventoryDown, width/2, height/2);
      imageMode(CORNER);
      strokeWeight(5);
      slots();
      displayItems();
      strokeWeight(1);
      imageMode(CENTER);
      image (inventoryUp, width/2, height/2);
      imageMode(CORNER);
    }
  }

  void slots () {
    for (postX = 1; postX <= widthCount; postX++) {
      for (postY = 1; postY <= heightCount; postY++) {
        if (mouseWidth == postX && mouseHeight == postY) {
          image (inInventorySlot, 350 + (mouseWidth * widthOfRect), 80 + (mouseHeight * heightOfRect));
        } else {
        }
      }
    }
    for (postX = 1; postX <= widthCount; postX++) {
      for (postY = 1; postY <= heightCount; postY++) {
        if (350 + (postX * widthOfRect) < mouseX && 350 + (postX * widthOfRect) + widthOfRect > mouseX &&(postY * heightOfRect) < mouseY  &&(postY * heightOfRect) + heightOfRect < mouseY) {
          mouseWidth = postX;
          mouseHeight = postY;
        }
      }
    }
  }


  void openInventory() {
    if (key == 'e' || key == 'E') {
      if (!inventoryIsOpened) {
        inventoryIsOpened = true;
      } else {
        if (key == 'e' || key == 'E') {
          inventoryIsOpened = false;
        }
      }
    }
  }

  void displayItems() {
    int col = 0;
    int row = 0;
    //widthOfRect
    boolean isGrassIn = false;
    boolean isRockIn = false;
    for (Items item : items) {
      fill(255, 0, 0);
      stroke(255, 0, 0);

      if (item.id == 1) {//grass
        if (isGrassIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(inventory.numberOfGrass, 350+100+30+col*widthOfRect, 80+90+40+row*heightOfRect);
          col++;
          isGrassIn = true;
        }
      }

      if (item.id == 2) {//rock
        if (isRockIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(inventory.numberOfRocks, 350+100+30+col*widthOfRect, 80+90+40+row*heightOfRect);
          col++;
          isRockIn = true;
        }
      }

      if (col > 6) {
        row++;
        col = 0;
      }
    }
  }
}
