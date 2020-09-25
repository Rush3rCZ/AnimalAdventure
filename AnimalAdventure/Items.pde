class Items { //<>//
  int itemX, itemY, itemX1, itemY1, widthOfItem, heightOfItem, placeInInventory, t, inInventory, id;
  boolean clicked;
  PImage item;
  Items () {
    widthOfItem = 80;
    heightOfItem = 80;
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
    }
  }

  void displayInv(int col, int row, int w, int h) {
    imageMode (CORNER);
    image (item, 460+col*w, 180+row*h);
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
    }
  }
}
//------------------------------------------------------------------------//
class Hoe extends Items {
  Hoe () {
    super();
    id = 3;
    item = loadImage ("hoe.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
    if (key == 'r') {
      for (int i = inventory.items.size() - 1; i >= 0; i--) {
        inventory.items.remove(this);
      }
    }
  }
}

//------------------------------------------------------------------------//
class Axe extends Items {
  Axe () {
    super();
    id = 4;
    item = loadImage ("axe.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Hammer extends Items {
  Hammer () {
    super();
    id = 5;
    item = loadImage ("hammer.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Cake extends Items {
  Cake () {
    super();
    id = 6;
    item = loadImage ("cake.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Wheat extends Items {
  Wheat () {
    super();
    id = 7;
    item = loadImage ("wheat.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Paper extends Items {
  Paper () {
    super();
    id = 8;
    item = loadImage ("paper.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class FishingRod extends Items {
  FishingRod () {
    super();
    id = 9;
    item = loadImage ("fishingRod.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Fish extends Items {
  Fish () {
    super();
    id = 10;
    item = loadImage ("fish.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class Coke extends Items {
  Coke () {
    super();
    id = 11;
    item = loadImage ("flour.png");
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
    if (key == 'g') {
      inventory.items.add(this);
    }
  }
}

//------------------------------------------------------------------------//
class HealingPotion extends Items {
  int z;
  HealingPotion () {
    super();
    id = 12;
    item = loadImage ("healingPotion.png");
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
    if (inventory.numberOfHealingPots > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  void test () {
    if (inventory.numberOfHealingPots == 0) {
      if (z > 0) {
        inventory.items.remove(this);
        z = 0;
      }
    }
  }
}

//------------------------------------------------------------------------//

class ArrayHealingPotion {
  ArrayList <HealingPotion> ArrayHealing;
  int interval, p, u, usable;
  int time, countSeconds;
  ArrayHealingPotion() {
    interval = (int) random(1, 8);
    p = 0;
    ArrayHealing = new ArrayList <HealingPotion>();
    for (int t = 0; t < 1; t++) {
      ArrayHealing.add(new HealingPotion());
    }
  }

  void displayHealing() {
    for (int i = ArrayHealing.size() - 1; i >= 0; i--) {
      HealingPotion helingPot = ArrayHealing.get(i);
      helingPot.display();
      //helingPot.inInventory();
      if (mousePressed && helingPot.clicked()) {
        inventory.numberOfHealingPots++;
        ArrayHealing.remove(i);
      }
    }
  }

  void newHealing () {
    if (time == interval) {
      if (u < 1) {
        ArrayHealing.add(new HealingPotion());
        u++;
      }
    }
  }

  void timer () {
    if (time >= 30) {
      if (p == 0) {
        interval = (int) random(1, 29);
        p = 1;
      }
    }
    if (enemyArray.timeStarts) {
      time = int((millis() - countSeconds) /1000);
    }
    if (time >= 30) {
      countSeconds = millis();
    }
    if (time == 0) {
      p = 0;
      u = 0;
    }
  }

  void useHeal () {
    if (key == 'h' || key == 'H' ) { 
      if (inventory.numberOfHealingPots > 0 && usable < 1) {
        player.HP += 50;
        inventory.numberOfHealingPots--;
        arrayHealingPotion.usable++;
      }
    }
  }

  void unUseHeal () {
    if (key == 'h' || key == 'H' ) {
      arrayHealingPotion.usable = 0;
    }
  }
}
