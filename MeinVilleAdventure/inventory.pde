class inventory {
  int widthCount, heightCount, postX, postY, widthOfRect, heightOfRect, mouseWidth, mouseHeight, numberOfGrass, numberOfRocks, col, row, numberOfHealingPots, numberOfWoodLogs;
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
    boolean isHoeIn = false;
    boolean isAxeIn = false;
    boolean isHammerIn = false;
    boolean isCakeIn = false;
    boolean isWheatIn = false;
    boolean isPaperIn = false;
    boolean isFishingRodIn = false;
    boolean isFishIn = false;
    boolean isCokeIn = false;
    boolean isHealingPotionIn = false;
    boolean isKey1In = false;
    boolean isKey2In = false;
    boolean isKey3In = false;
    boolean isKey4In = false;
    boolean isWoodLogIn = false;


    for (Items item : items) {
      textSize(20);
      fill(0);

      if (item.id == 1) {//grass
        if (isGrassIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(numberOfGrass, 455+col*widthOfRect, 210+row*heightOfRect);
          col++;
          isGrassIn = true;
        }
      }

      if (item.id == 2) {//rock
        if (isRockIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(numberOfRocks, 455+col*widthOfRect, 210+row*heightOfRect);
          col++;
          isRockIn = true;
        }
      }

      if (item.id == 3) {//hoe
        if (isHoeIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isHoeIn = true;
        }
      }
      if (item.id == 4) {//axe
        if (isAxeIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isAxeIn = true;
        }
      }
      if (item.id == 5) {//hammer
        if (isHammerIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isHammerIn = true;
        }
      }
      if (item.id == 6) {//cake
        if (isCakeIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isCakeIn = true;
        }
      }
      if (item.id == 7) {//wheat
        if (isWheatIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isWheatIn = true;
        }
      }
      if (item.id == 8) {//paper
        if (isPaperIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isPaperIn = true;
        }
      }
      if (item.id == 9) {//fishingRod
        if (isFishingRodIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isFishingRodIn = true;
        }
      }
      if (item.id == 10) {//fish
        if (isFishIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isFishIn = true;
        }
      }
      if (item.id == 11) {//coke
        if (isCokeIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isCokeIn = true;
        }
      }
      if (item.id == 12) {//healingPotion
        if (isHealingPotionIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(numberOfHealingPots, 455+col*widthOfRect, 210+row*heightOfRect);
          col++;
          isHealingPotionIn = true;
        }
      }
      if (item.id == 13) {//key1
        if (isKey1In == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isKey1In = true;
        }
      }
      if (item.id == 14) {//key2
        if (isKey2In == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isKey2In = true;
        }
      }
      if (item.id == 15) {//key3
        if (isKey3In == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isKey3In = true;
        }
      }
      if (item.id == 16) {//key4
        if (isKey4In == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          col++;
          isKey4In = true;
        }
      }

      if (item.id == 17) {//woodLog
        if (isWoodLogIn == false) {
          item.displayInv(col, row, widthOfRect, heightOfRect);
          text(numberOfWoodLogs, 455+col*widthOfRect, 210+row*heightOfRect);
          col++;
          isWoodLogIn = true;
        }
      }

      if (col > 5) {
        row++;
        //col = 0;
        if (col > 11) {
          row++;
          if (col > 17) {
            row++;
          }
        }
      }
    }
  }
}
