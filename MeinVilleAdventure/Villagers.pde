class VillagerFunction {
  Lumberjack lumberjack;
  Joiner joiner;
  Builder builder;

  VillagerFunction () {
    lumberjack = new Lumberjack();
    joiner = new Joiner();
    builder = new Builder();
  }

  void click () {
    lumberjack.click();
    joiner.click();
    builder.click();
  }

  void display() {
    if (lumberjack.currentTrade) {
      lumberjack.tradeDisplay();
      lumberjack.tradeButton();
      lumberjack.endCross();
    }
    if (joiner.currentTrade) {
      joiner.tradeDisplay();
      joiner.tradeButton();
      joiner.endCross();
    }
    if (builder.currentTrade) {
      builder.tradeDisplay();
      builder.tradeButton();
      builder.endCross();
    }
    builder.isThereNeededItem();
    builder.timer();
  }
}




class Villagers {
  PImage villager, tradeButtonGreen, tradeButtonGrey, tradeButtonGreenBig, tradeButtonGreyBig, tradeScreen, arrow, cross, cross1, cross1Big;
  int x, y, tradeButtonX, tradeButtonY, Xplus, Yplus, crossX, crossY, getX, getY, giveX, giveY;
  boolean currentTrade, isThereCurrentItem;
  Villagers () {
    villager = loadImage("villager.png");
    tradeButtonGreen = loadImage ("tradeButtonGreen.png");
    tradeButtonGrey = loadImage ("tradeButtonGrey.png");
    tradeButtonGreenBig = loadImage ("tradeButtonGreen.png");
    tradeButtonGreyBig = loadImage ("tradeButtonGrey.png");
    tradeScreen = loadImage ("tradeScreen.png");
    arrow = loadImage ("arrow.png");
    tradeButtonGreenBig.resize(220, 60);
    tradeButtonGreyBig.resize(220, 60);
    cross = loadImage("cross.png");
    cross1 = loadImage("cross1.png");
    cross1Big = loadImage("cross1.png");
    tradeButtonX = width/2;
    cross1Big.resize(120, 120);
    tradeButtonY = 520;
    crossX = 1020;
    crossY = 120;
    giveX = 500;
    giveY = 420;
    getX = 800;
    getY = 420;
  }

  void trade() {
  }


  void endCross() {
    if (mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      image (cross1Big, crossX, crossY);
      if (i31 < 1) {
        clak.play();
        i31 = 1;
      }
    } else {
      image (cross1, crossX, crossY);
      i31 = 0;
    }
  }

  void click () {
    x = background.backgroundX + Xplus;
    y = background.backgroundY + Yplus;
    if (!tradeOpen && mouseX < x + 70 && mouseX > x - 70 && mouseY < y + 95 && mouseY > y - 95) {
      currentTrade = true;
      gameHasStarted = false;
      tradeOpen = true;
    }
    if (currentTrade && mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      trade();
    }
    if (currentTrade && mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      gameHasStarted = true;
      tradeOpen = false;
      currentTrade = false;
    }
  }


  void display () {
    imageMode(CENTER);
    x = background.backgroundX + Xplus;
    y = background.backgroundY + Yplus;
    image (villager, x, y);
  }
}

//------------------------------------------------------------------------------------------------//

class Lumberjack extends Villagers {
  Axe axe;
  Grass grass;
  Rock rock;
  Lumberjack() {
    super();
    Xplus = 3130;
    Yplus = 2550;
    rock = new Rock();
    grass = new Grass();
    axe = new Axe ();
    tradeOpen = false;
  }


  void tradeDisplay () {
    imageMode(CENTER);
    rectMode (CENTER);
    textAlign(CENTER);
    strokeWeight(10);
    stroke (0);
    fill (0);
    image (tradeScreen, width/2, height/2);
    textSize (60);
    text ("Lumberjack", width/2, 190);
    textSize (25);
    String VText = "Hey buddy, if you're doing nothing, I'd have a job for you and of course not for anything! I'll give you an axe for that! Just collect all the grass and stones you can find!";
    text (VText, width/2, height/2, 700, 300);
    noFill();
    image (arrow, width/2, 400);
    image (grass.item, giveX, giveY);
    text (20, giveX - 30, giveY + 50);
    image (rock.item, 370, 420);
    text (20, 370 - 30, 420 + 50);
    image (axe.item, getX, getY);
    if (inventory.numberOfGrass < 20) {
      image (cross, giveX, giveY);
    }
    if (inventory.numberOfRocks < 20) {
      image (cross, 370, 420);
    }
    rect (giveX, giveY, 110, 110);
    rect (370, 420, 110, 110);
    rect (getX, getY, 110, 110);
    imageMode(CORNER);
    rectMode (CORNER);
    strokeWeight(2);
    textAlign(CORNER);
  }

  void trade () {
    if (inventory.numberOfGrass >= 20 && inventory.numberOfRocks >= 20) {
      axe.addInInventory();
      inventory.numberOfRocks = 0;
      inventory.numberOfGrass = 0;
    }
  }

  void tradeButton () {
    imageMode(CENTER);
    if (mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      if (inventory.numberOfGrass < 20 || inventory.numberOfRocks < 20) {
        image (tradeButtonGreyBig, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreenBig, tradeButtonX, tradeButtonY);
      }
      if (i30 < 1) {
        clak.play();
        i30 = 1;
      }
    } else {
      if (inventory.numberOfGrass < 20 || inventory.numberOfRocks < 20) {
        image (tradeButtonGrey, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreen, tradeButtonX, tradeButtonY);
      }
      i30 = 0;
    }
  }
}

//------------------------------------------------------------------------------------------------//

class Joiner extends Villagers {
  FishingRod rod;
  WoodLog log;
  Joiner() {
    super();
    Xplus = 3130;
    Yplus = 2250;
    log = new WoodLog();
    rod = new FishingRod();
    tradeOpen = false;
  }

  void tradeDisplay () {
    imageMode(CENTER);
    rectMode (CENTER);
    textAlign(CENTER);
    strokeWeight(10);
    stroke (0);
    fill (0);
    image (tradeScreen, width/2, height/2);
    textSize (60);
    text ("Joiner", width/2, 180);
    textSize (25);
    String VText = "Nice to meet you, young man. Can you help me, please? I need wood for work, but I don't have any. If you find an axe, cut down a few trees in the nearby forest. If you bring me 10 logs, I'll make you a rod for it!";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (log.item, giveX, giveY);
    text (10, giveX - 30, giveY + 47);
    image (rod.item1, getX, getY);
    if (inventory.numberOfWoodLogs < 10) {
      image (cross, giveX, giveY);
    }
    rect (giveX, giveY, 110, 110);
    rect (getX, getY, 110, 110);
    imageMode(CORNER);
    rectMode (CORNER);
    strokeWeight(2);
    textAlign(CORNER);
  }

  void trade () {
    if (inventory.numberOfWoodLogs >= 10) {
      rod.addInInventory();
      inventory.numberOfWoodLogs -= 10;
    }
  }

  void tradeButton () {
    imageMode(CENTER);
    if (mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      if (inventory.numberOfWoodLogs < 10) {
        image (tradeButtonGreyBig, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreenBig, tradeButtonX, tradeButtonY);
      }
      if (i30 < 1) {
        clak.play();
        i30 = 1;
      }
    } else {
      if (inventory.numberOfWoodLogs < 10) {
        image (tradeButtonGrey, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreen, tradeButtonX, tradeButtonY);
      }
      i30 = 0;
    }
  }
}

//------------------------------------------------------------------------------------------------//

class Builder extends Villagers {
  Axe axe;
  Key4 key4;
  float time, countSeconds;
  boolean anotherItem;
  Builder() {
    super();
    Xplus = 2800;
    Yplus = 2250;
    axe = new Axe();
    key4 = new Key4();
    tradeOpen = false;
  }

  void timer () {
    time = int((millis() - countSeconds) /1000);
    if (time <= 2) {
      textSize (50);
      textAlign(CENTER);
      fill(255, 0, 0);
      text ("Maybe I can you use it somewhere else first", width/2, height/2);
      textSize (20);
      noFill();
      textAlign(CORNER);
    }
  }

  void tradeDisplay () {
    imageMode(CENTER);
    rectMode (CENTER);
    textAlign(CENTER);
    strokeWeight(10);
    stroke (0);
    fill (0);
    image (tradeScreen, width/2, height/2);
    textSize (60);
    text ("Builder", width/2, 180);
    textSize (25);
    String VText = "Hi man, look... I need an axe, so if you have one, please bring it to me. I would exchange it for a very rare part of the key, I heard you are looking for it :)";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (axe.item, giveX, giveY);
    image (key4.item, getX, getY);
    if (!isThereCurrentItem) {
      image (cross, giveX, giveY);
    }
    rect (giveX, giveY, 110, 110);
    rect (getX, getY, 110, 110);
    imageMode(CORNER);
    rectMode (CORNER);
    strokeWeight(2);
    textAlign(CORNER);
  }

  void isThereNeededItem () {
    inventory.isAxeIn = false;
    inventory.isFishingRodIn = false;
    for (Items item : inventory.items) {
      if (item.id == 4) {
        if (inventory.isAxeIn == false) {
          isThereCurrentItem = true;
          inventory.isAxeIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
      if (item.id == 9) {
        if (inventory.isFishingRodIn == false) {
          anotherItem = true;
          inventory.isFishingRodIn = true;
        } else {
          anotherItem = false;
        }
      }
    }
  }

  void trade () {
    if (isThereCurrentItem && inventory.numberOfWoodLogs >= 10 || anotherItem) {
      key4.addInInventory();
      axe.removeFromInventory();
    } else {
      countSeconds = millis();
    }
  }

  void tradeButton () {
    imageMode(CENTER);
    if (mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      if (isThereCurrentItem) {
        image (tradeButtonGreenBig, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreyBig, tradeButtonX, tradeButtonY);
      }
      if (i30 < 1) {
        clak.play();
        i30 = 1;
      }
    } else {
      if (isThereCurrentItem) {
        image (tradeButtonGreen, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGrey, tradeButtonX, tradeButtonY);
      }
      i30 = 0;
    }
  }
}
