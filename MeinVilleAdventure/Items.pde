class Items { //<>//
  int itemX, itemY, itemX1, itemY1, widthOfItem, heightOfItem, placeInInventory, t, inInventory, id;
  PImage item;
  int z;
  Items () {
    widthOfItem = 80;
    heightOfItem = 80;
    inInventory = 0;
  }

  void display() {
  }

  void displayInv(int col, int row, int w, int h) {
    imageMode (CORNER);
    image (item, 460+col*w, 180+row*h);
    imageMode (CENTER);
  }

  void addInInventory () {
    inventory.items.add(this);
  }

  void removeFromInventory () {
    inventory.items.remove(this);
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

  void addInInventory () {
    if (inventory.numberOfGrass > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }

  void removeFromInventory () {
    if (inventory.numberOfGrass < 1) {
      if (z > 0) {
        inventory.items.remove(this);
        z = 0;
      }
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

  void addInInventory () {
    if (inventory.numberOfRocks > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }

  void removeFromInventory () {
    if (inventory.numberOfRocks < 1) {
      if (z > 0) {
        inventory.items.remove(this);
        z = 0;
      }
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
}

//------------------------------------------------------------------------//
class Key1 extends Items {
  Key1 () {
    super();
    id = 13;
    item = loadImage ("key1.png");
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
class Key2 extends Items {
  Key2 () {
    super();
    id = 14;
    item = loadImage ("key2.png");
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
class Key3 extends Items {
  Key3 () {
    super();
    id = 15;
    item = loadImage ("key3.png");
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
class Key4 extends Items {
  Key4 () {
    super();
    id = 16;
    item = loadImage ("key4.png");
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
class WoodLog extends Items {
  WoodLog () {
    super();
    id = 17;
    item = loadImage ("woodLog.png");
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
class HealingPotion extends Items {
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

  void addInInventory () {
    if (inventory.numberOfHealingPots > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }

  void removeFromInventory () {
    if (inventory.numberOfHealingPots < 1) {
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
    if (time >= 20) {
      if (p == 0) {
        interval = (int) random(1, 19);
        p = 1;
      }
    }
    if (enemyArray.timeStarts) {
      time = int((millis() - countSeconds) /1000);
    }
    if (time >= 20) {
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

//-------------------------------------------------------------------------------------//

class AddItems {
  int h;
  Hoe hoe;
  Axe axe;
  Hammer hammer;
  Cake cake;
  Wheat wheat;
  Paper paper;
  FishingRod fishingRod;
  Fish fish;
  Coke coke;
  HealingPotion healingPotion;
  Grass grass;
  Rock rock;
  Key1 key1;
  Key2 key2;
  Key3 key3;
  Key4 key4;
  WoodLog woodLog;

  AddItems() {
    hoe = new Hoe();
    axe = new Axe ();
    hammer = new Hammer ();
    cake = new Cake();
    wheat = new Wheat();
    paper = new Paper();
    fishingRod = new FishingRod ();
    fish = new Fish ();
    coke = new Coke();
    healingPotion = new HealingPotion();
    rock = new Rock();
    grass = new Grass();
    key1 = new Key1();
    key2 = new Key2();
    key3 = new Key3();
    key4 = new Key4();
    woodLog = new WoodLog ();
    h = 0;
  }
  void released () {
    if (key == 'j') {
      h = 0;
    }
  }

  void itemUse () {
    healingPotion.addInInventory ();
    rock.addInInventory();
    grass.addInInventory();
    //if (h < 1 && key == 'j') {
    //  inventory.numberOfGrass += 20;
    //  inventory.numberOfRocks += 20;
    //  hoe.addInInventory ();
    //  //axe.addInInventory ();
    //  hammer.addInInventory ();
    //  cake.addInInventory ();
    //  wheat.addInInventory ();
    //  paper.addInInventory ();
    //  fishingRod.addInInventory ();
    //  fish.addInInventory ();
    //  coke.addInInventory ();
    //  key1.addInInventory ();
    //  key2.addInInventory ();
    //  key3.addInInventory ();
    //  key4.addInInventory ();
    //  woodLog.addInInventory ();
    //  h = 1;
    //}
    healingPotion.removeFromInventory ();
    rock.removeFromInventory ();
    grass.removeFromInventory ();
    //if (key == 'k') {
    //  inventory.numberOfGrass = 0;
    //  inventory.numberOfRocks = 0;
    //  hoe.removeFromInventory ();
    //  axe.removeFromInventory ();
    //  hammer.removeFromInventory ();
    //  cake.removeFromInventory ();
    //  wheat.removeFromInventory ();
    //  paper.removeFromInventory ();
    //  fishingRod.removeFromInventory ();
    //  fish.removeFromInventory ();
    //  coke.removeFromInventory ();
    //  key1.removeFromInventory ();
    //  key2.removeFromInventory ();
    //  key3.removeFromInventory ();
    //  key4.removeFromInventory ();
    //  woodLog.removeFromInventory ();
    //}
  }
}
