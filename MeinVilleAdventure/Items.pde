class Items { //<>//
  int itemX, itemY, itemX1, itemY1, widthOfItem, heightOfItem, placeInInventory, t, inInventory, id;
  PImage item;
  int z;
  boolean spawn;
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
  int zj;
  Hammer () {
    super();
    id = 5;
    item = loadImage ("hammer.png");
    item.resize (widthOfItem, heightOfItem);
    itemX = -5;
    itemY = -5;
    zj = 0;
  }

  void display () {
    if (spawnHammer) {
      if (zj < 1) {
        itemX1 = 1000;
        itemY1 = 1000;
        zj++;
      }
      itemX = background.backgroundX + itemX1;
      itemY = background.backgroundY + itemY1;
      imageMode (CENTER);
      image (item, itemX, itemY);  
      imageMode (CORNER);
    }
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2 && mouseButton == LEFT) {
      return true;
    } else {
      return false;
    }
  }


  void addInInventory () {
    if (clicked()) {
      inventory.items.add(this);
      itemX1 = -100;
      itemY1 = -100;
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
  float time, p, interval, countSeconds, u;
  PImage item1;
  FishingRod () {
    super();
    id = 9;
    item1 = loadImage ("fishingRod.png");
    item1.resize (widthOfItem, heightOfItem);
    itemX1 = (int) random (0, 3400);
    itemY1 = (int) random (1000, 3400);
    countSeconds = millis();
  }

  void timer () {
    time = int((millis() - countSeconds) /1000);
  }

  void displayInv(int col, int row, int w, int h) {
    imageMode (CORNER);
    image (item1, 460+col*w, 180+row*h);
    imageMode (CENTER);
  }

  boolean catchable() {
    if (hue(get(mouseX - 10, mouseY - 10)) <= 127 && hue(get(mouseX, mouseY)) >= 123 && saturation(get(mouseX, mouseY)) >= 180 && saturation(get(mouseX, mouseY)) <= 230 && brightness(get(mouseX, mouseY)) >= 185  && brightness(get(mouseX, mouseY)) <= 220) {
      return true;
    } else {
      return false;
    }
  }

  void catchFish() {
    for (Items item : inventory.items) {
      if (catchable() && item.id == 9) {
        fill (94, 255, 97);
        stroke(0);
        rect (mouseX - 3, mouseY - 22, 150, 30, 10);
        fill(0);
        text ("Catch the Fish!", mouseX, mouseY);
        image(item1, mouseX + 20, mouseY + 10);
        noFill();
        noStroke();
        if (mousePressed && time >= 1 && mouseButton == RIGHT) {
          fishArray.ArrayFish.add(new Fish());
          countSeconds = millis();
        }
      }
    }
  }

  void display () {
    itemX = background.backgroundX + itemX1;
    itemY = background.backgroundY + itemY1;
    imageMode (CENTER);
    image (item1, itemX, itemY);  
    imageMode (CORNER);
  }
}

//------------------------------------------------------------------------//
class Fish extends Items {
  PVector playerFish, postFish, difference, velocity;
  float distance;
  boolean animation;
  Fish () {
    super();
    id = 10;
    item = loadImage ("fish.png");
    item.resize (widthOfItem, heightOfItem);
    itemX1 = (background.backgroundX * -1) + mouseX;
    itemY1 = (background.backgroundY * -1) + mouseY + 80;
    postFish = new PVector (background.backgroundX +  itemX1, background.backgroundY + itemY1);
    velocity = new PVector(0, 0);
    playerFish = new PVector (player.playerX, player.playerY);
    difference = PVector.sub (postFish, playerFish);
    animation = false;
  }

  void display () {
    distance = dist(playerFish.x, playerFish.y, postFish.x, postFish.y);
    if (!animation) {
      itemX = background.backgroundX +  itemX1;
      itemY = background.backgroundY + itemY1;
      imageMode (CENTER);
      image (item, itemX, itemY);  
      imageMode (CORNER);
    } else {
      stroke (0);
      velocity.add(difference);
      velocity.limit(8);
      postFish.sub(velocity);
      imageMode (CENTER);
      strokeWeight(5);
      image (item, postFish.x, postFish.y); 
      line (postFish.x, postFish.y, playerFish.x, playerFish.y);
      imageMode (CORNER);
      noFill();
    }
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }

  void addInInventory () {
    if (inventory.numberOfFishes > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  void removeFromInventory () {
    if (inventory.numberOfFishes < 1) {
      if (z > 0) {
        inventory.items.remove(this);
        z = 0;
      }
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
    itemX = width/2;
    itemY = height/2;
    item.resize (widthOfItem, heightOfItem);
  }

  void display () {
    itemX = itemX1;
    itemY = itemY1;
    imageMode (CENTER);
    image (item, itemX, itemY);  
    imageMode (CORNER);
  }

  boolean clicked () {
    if (mouseX < itemX + widthOfItem/2 && mouseX > itemX - widthOfItem/2 && mouseY < itemY + heightOfItem/2 && mouseY > itemY - heightOfItem/2) {
      return true;
    } else {
      return false;
    }
  }

  void addInInventory () {
    if (inventory.numberOfWoodLogs > 0) {
      if (z < 1) {
        inventory.items.add(this);
        z = 1;
      }
    }
  }

  void removeFromInventory () {
    if (inventory.numberOfWoodLogs < 1) {
      if (z > 0) {
        inventory.items.remove(this);
        z = 0;
      }
    }
  }
}

//------------------------------------------------------------------------//

class ArrayFishes {
  ArrayList <Fish> ArrayFish;
  ArrayFishes() {
    ArrayFish = new ArrayList <Fish>();
  }

  void display() {
    for (int i = ArrayFish.size() - 1; i >= 0; i--) {
      Fish f = ArrayFish.get(i);
      f.display();
      if (mousePressed && f.clicked() && mouseButton == LEFT) {
        f.postFish = new PVector (mouseX, mouseY);
        f.difference = PVector.sub (f.postFish, f.playerFish);
        f.animation = true;
      }
      if (f.distance < 10) {
        inventory.numberOfFishes++;
        ArrayFish.remove(i);
      }
    }
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
      if (mousePressed && helingPot.clicked() && mouseButton == LEFT) {
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

  void display() {
    fishingRod.timer();
    fishingRod.catchFish();
    hammer.display();
  }

  void itemUse () {
    healingPotion.addInInventory ();
    rock.addInInventory();
    grass.addInInventory();
    woodLog.addInInventory ();
    fish.addInInventory ();
    hammer.addInInventory();

    healingPotion.removeFromInventory ();
    rock.removeFromInventory ();
    grass.removeFromInventory ();
    woodLog.removeFromInventory ();
    fish.removeFromInventory ();
  }
}
