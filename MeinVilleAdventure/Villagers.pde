class VillagerFunction {
  Lumberjack lumberjack;
  Joiner joiner;
  Builder builder;
  Hunter hunter;
  Fisherman fisherman;
  Farmer farmer;
  Miller miller;
  Baker baker;
  Administrator admin;
  Teacher teacher;
  Blacksmith blacksmith;

  VillagerFunction () {
    lumberjack = new Lumberjack();
    joiner = new Joiner();
    builder = new Builder();
    hunter = new Hunter();
    fisherman = new Fisherman ();
    farmer = new Farmer ();
    miller = new  Miller();
    baker = new Baker();
    admin = new Administrator();
    teacher = new Teacher();
    blacksmith = new Blacksmith();
  }

  void click () {
    lumberjack.click();
    joiner.click();
    builder.click();
    hunter.click();
    fisherman.click();
    farmer.click();
    miller.click();
    baker.click();
    admin.click();
    teacher.click();
    blacksmith.click();
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
    if (hunter.currentTrade) {
      hunter.tradeDisplay();
      hunter.tradeButton();
      hunter.endCross();
    }
    if (fisherman.currentTrade) {
      fisherman.tradeDisplay();
      fisherman.tradeButton();
      fisherman.endCross();
    }
    if (farmer.currentTrade) {
      farmer.tradeDisplay();
      farmer.tradeButton();
      farmer.endCross();
    }
    if (miller.currentTrade) {
      miller.tradeDisplay();
      miller.tradeButton();
      miller.endCross();
    }
    if (baker.currentTrade) {
      baker.tradeDisplay();
      baker.tradeButton();
      baker.endCross();
    }
    if (admin.currentTrade) {
      admin.tradeDisplay();
      admin.tradeButton();
      admin.endCross();
    }
    if (teacher.currentTrade) {
      teacher.tradeDisplay();
      teacher.tradeButton();
      teacher.endCross();
    }
    if (blacksmith.currentTrade) {
      blacksmith.tradeDisplay();
      blacksmith.tradeButton();
      blacksmith.endCross();
    }
    builder.isThereNeededItem();
    fisherman.isThereNeededItem();
    farmer.isThereNeededItem();
    miller.isThereNeededItem();
    baker.isThereNeededItem();
    admin.isThereNeededItem();
    teacher.isThereNeededItem();
    blacksmith.isThereNeededItem();
    //blacksmith.lostHammer();
    builder.timer();
    fisherman.timer();
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
    if (!tradeOpen && mouseX < x + 70 && mouseX > x - 70 && mouseY < y + 95 && mouseY > y - 95 && mouseButton == RIGHT) {
      currentTrade = true;
      gameHasStarted = false;
      tradeOpen = true;
    }
    if (currentTrade && mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      trade();
    }
    if (currentTrade && mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50 && mouseButton == LEFT) {
      gameHasStarted = true;
      tradeOpen = false;
      currentTrade = false;
      player.moveRightPlayer = false;
      player.moveLeftPlayer = false;
      player.moveUpPlayer = false;
      player.moveDownPlayer = false;
      background.moveRightBackground = false;
      background.moveLeftBackground = false;
      background.moveUpBackground = false;
      background.moveDownBackground = false;
      player.imageRight  = false;
      player.imageDown = false;
      player.imageUp = false;
      player.imageLeft = false;
    }
  }


  void display () {
    imageMode(CENTER);
    x = background.backgroundX + Xplus;
    y = background.backgroundY + Yplus;
    image (villager, x, y);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Builder extends Villagers {
  Axe axe;
  Key4 key4;
  float time, countSeconds;
  boolean anotherItem;
  int farFarAway;
  Builder() {
    super();
    Xplus = 2900;
    Yplus = 2250;
    axe = new Axe();
    key4 = new Key4();
    tradeOpen = false;
  }

  void timer () {
    time = int((millis() - countSeconds) /1000);
    if (time <= 1) {
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


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 4) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem && inventory.numberOfWoodLogs >= 10 || anotherItem || farFarAway == 1) {
      key4.addInInventory();
      axe.removeFromInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Hunter extends Villagers {
  float time, countSeconds;
  Fish fish;
  Key3 key3;
  Hunter() {
    super();
    Xplus = 3100;
    Yplus = 1900;
    fish = new Fish();
    key3 = new Key3();
    tradeOpen = false;
    countSeconds = millis();
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
    text ("Hunter", width/2, 180);
    textSize (25);
    String VText = "Hi, look... Because of those monsters, there's no prey left and the village is running out of food. Can you get something? At least three fish would come in handy, I'll give you anything for it! Even the rare part of the key!";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (fish.item, giveX, giveY);
    text (3, giveX - 40, giveY + 47);
    image (key3.item, getX, getY);
    if (inventory.numberOfFishes < 3) {
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
    if (inventory.numberOfFishes >= 3) {
      key3.addInInventory();
      inventory.numberOfFishes -= 3;
    }
  }

  void tradeButton () {
    imageMode(CENTER);
    if (mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      if (inventory.numberOfFishes < 3) {
        image (tradeButtonGreyBig, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreenBig, tradeButtonX, tradeButtonY);
      }
      if (i30 < 1) {
        clak.play();
        i30 = 1;
      }
    } else {
      if (inventory.numberOfFishes < 3) {
        image (tradeButtonGrey, tradeButtonX, tradeButtonY);
      } else {
        image (tradeButtonGreen, tradeButtonX, tradeButtonY);
      }
      i30 = 0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Fisherman extends Villagers {
  FishingRod rod;
  Hoe hoe;
  Builder builder;
  float time, countSeconds;
  boolean anotherItem;
  Fisherman() {
    super();
    Xplus = 2850;
    Yplus = 2020;
    rod = new FishingRod();
    hoe = new Hoe();
    builder = new Builder();
    tradeOpen = false;
  }

  void timer () {
    time = int((millis() - countSeconds) /1000);
    if (time <= 1) {
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
    text ("Fisherman", width/2, 180);
    textSize (25);
    String VText = "Hi, I'm a fisherman and unfortunately my rod broke. Could you get me one? If you wanted, I could give you a hoe for it, I won't use it anyway.";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (rod.item1, giveX, giveY);
    image (hoe.item, getX, getY);
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
    inventory.isKey3In = false;
    inventory.isFishingRodIn = false;
    for (Items item : inventory.items) {
      if (item.id == 9) {
        if (inventory.isFishingRodIn == false) {
          isThereCurrentItem = true;
          inventory.isFishingRodIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
      if (item.id == 15) {
        if (inventory.isKey3In == false) {
          anotherItem = true;
          inventory.isKey3In = true;
        } else {
          anotherItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 9) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem && inventory.numberOfFishes >= 3 || anotherItem) {
      hoe.addInInventory();
      removeCurrentItem();
      builder.farFarAway = 1;
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Farmer extends Villagers {
  Wheat wheat;
  Hoe hoe;
  boolean anotherItem;
  Farmer() {
    super();
    Xplus = 2370;
    Yplus = 2150;
    wheat = new Wheat();
    hoe = new Hoe();
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
    text ("Farmer", width/2, 180);
    textSize (25);
    String VText = "Hi, my helper, the bastard, recently ruined my hoe. I would really like you to get one. I'll give you some of the wheat I grew for exchange.";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (hoe.item, giveX, giveY);
    image (wheat.item, getX, getY);
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
    inventory.isHoeIn = false;
    for (Items item : inventory.items) {
      if (item.id == 3) {
        if (inventory.isHoeIn == false) {
          isThereCurrentItem = true;
          inventory.isHoeIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 3) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      wheat.addInInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Miller extends Villagers {
  Wheat wheat;
  Coke coke;
  boolean anotherItem;
  Miller() {
    super();
    Xplus = 2875;
    Yplus = 2730;
    wheat = new Wheat();
    coke = new Coke();
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
    text ("Miller", width/2, 180);
    textSize (25);
    String VText = "Hi, I don't want to delay you, but if you have any wheat, give it to me. I'll give you white powder for that, I mean flour. Do you understand to me?";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (wheat.item, giveX, giveY);
    image (coke.item, getX, getY);
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
    inventory.isWheatIn = false;
    for (Items item : inventory.items) {
      if (item.id == 7) {
        if (inventory.isWheatIn == false) {
          isThereCurrentItem = true;
          inventory.isWheatIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 7) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      coke.addInInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Baker extends Villagers {
  Cake cake;
  Coke coke;
  boolean anotherItem;
  Baker() {
    super();
    Xplus = 3235;
    Yplus = 3000;
    cake = new Cake();
    coke = new Coke();
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
    text ("Baker", width/2, 180);
    textSize (25);
    String VText = "Hi, I'm looking for such a white powder. You might know it as snow, sugar or flour! If you can get any, please give me some! I pay for cakes!";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (coke.item, giveX, giveY);
    image (cake.item, getX, getY);
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
    inventory.isCokeIn = false;
    for (Items item : inventory.items) {
      if (item.id == 11) {
        if (inventory.isCokeIn == false) {
          isThereCurrentItem = true;
          inventory.isCokeIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 11) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      cake.addInInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Administrator extends Villagers {
  Cake cake;
  Paper paper;
  boolean anotherItem;
  Administrator() {
    super();
    Xplus = 2578;
    Yplus = 2520;
    cake = new Cake();
    paper = new Paper();
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
    text ("Administrator", width/2, 180);
    textSize (25);
    String VText = "Good day! I'm the administrator of this village and I don't think you're allowed to be here, do you? Anyway, if you give me a cake, I'd think about it ;) But I'll fine you anyway!";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 400);
    image (cake.item, giveX, giveY);
    image (paper.item, getX, getY);
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
    inventory.isCakeIn = false;
    for (Items item : inventory.items) {
      if (item.id == 6) {
        if (inventory.isCakeIn == false) {
          isThereCurrentItem = true;
          inventory.isCakeIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 6) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      paper.addInInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Teacher extends Villagers {
  Key2 key2;
  Paper paper;
  Hammer hammer;
  boolean anotherItem;
  Teacher() {
    super();
    Xplus = 2630;
    Yplus = 2060;
    key2 = new Key2();
    paper = new Paper();
    hammer = new Hammer();
    tradeOpen = false;
    giveX = 480;
    giveY = 440;
    getX = 820;
    getY = 440;
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
    text ("Teacher", width/2, 180);
    textSize (25);
    String VText = "Uhhh ... Working with those kids is really tiring! I still have to reprimand them and tell them what to do. Wouldn't you at least have some paper? I have a piece of key here, I don't know what it's made for, but you'll definitely figure it out!";
    text (VText, width/2, height/2 + 45, 700, 400);
    noFill();
    image (arrow, width/2, 440);
    image (paper.item, giveX, giveY);
    image (key2.item, getX, getY);
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
    inventory.isPaperIn = false;
    for (Items item : inventory.items) {
      if (item.id == 8) {
        if (inventory.isPaperIn == false) {
          isThereCurrentItem = true;
          inventory.isPaperIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 8) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      spawnHammer = true;
      key2.addInInventory();
      removeCurrentItem();
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

class Blacksmith extends Villagers {
  Key1 key1;
  Hammer hammer;
  boolean anotherItem;
  int z = 0;
  Blacksmith() {
    super();
    Xplus = 3300;
    Yplus = 2075;
    key1 = new Key1();
    hammer = new Hammer();
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
    text ("Blacksmith", width/2, 180);
    textSize (25);
    if (!spawnHammer) {
      String VText = "Hey buddy, let me just be! I'm having really bad day!";
      text (VText, width/2, height/2 + 45, 700, 400);
    } else {
      String VText = "Hey, how are you? Remember how I said I'm having a bad day? I lost my hammer and I still didn't find it anywhere. Would you walk around and try to find it? I'll give you the last part of the key!";
      text (VText, width/2, height/2 + 45, 700, 400);
    }
    noFill();
    if (!spawnHammer) {
    } else {
      image (arrow, width/2, 440);
      rect (giveX, giveY, 110, 110);
      rect (getX, getY, 110, 110);
      image (hammer.item, giveX, giveY);
      image (key1.item, getX, getY);
      if (!isThereCurrentItem) {
        image (cross, giveX, giveY);
      }
    }
    imageMode(CORNER);
    rectMode (CORNER);
    strokeWeight(2);
    textAlign(CORNER);
  }


  void isThereNeededItem () {
    inventory.isHammerIn = false;
    for (Items item : inventory.items) {
      if (item.id == 5) {
        if (inventory.isHammerIn == false) {
          isThereCurrentItem = true;
          inventory.isHammerIn = true;
        } else {
          isThereCurrentItem = false;
        }
      }
    }
  }


  void removeCurrentItem () {
    for (int i = inventory.items.size() - 1; i >= 0; i--) {
      Items item = inventory.items.get(i);
      if (item.id == 5) {
        inventory.items.remove(i);
        isThereCurrentItem = false;
      }
    }
  }



  void trade () {
    if (isThereCurrentItem) {
      key1.addInInventory();
      removeCurrentItem();
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
