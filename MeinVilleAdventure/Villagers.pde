class VillagerFunction {
  Lumberjack lumberjack;

  VillagerFunction () {
    lumberjack = new Lumberjack();
  }

  void click () {
    lumberjack.click();
  }

  void display() {
    lumberjack.tradeDisplay();
    lumberjack.tradeButton();
    lumberjack.endCross();
  }
}



class Villagers {
  PImage villager, tradeButtonGreen, tradeButtonGrey, tradeButtonGreenBig, tradeButtonGreyBig, tradeScreen, arrow, cross, cross1, cross1Big;
  int x, y, tradeButtonX, tradeButtonY, plus, minus, crossX, crossY;

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
    x = background.backgroundX + plus;
    y = background.backgroundY + minus;
    if (mouseX < x + 70 && mouseX > x - 70 && mouseY < y + 95 && mouseY > y - 95) {
      tradeOpen = true;
      gameHasStarted = false;
    }
    if (tradeOpen && mouseX < tradeButtonX + 100 && mouseX > tradeButtonX - 100 && mouseY < tradeButtonY + 25 && mouseY > tradeButtonY - 25) {
      trade();
    }
    if (tradeOpen && mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      tradeOpen = false;
      gameHasStarted = true;
    }
  }

  void display () {
    imageMode(CENTER);
    x = background.backgroundX + plus;
    y = background.backgroundY + minus;
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
    plus = 3130;
    minus = 2550;
    rock = new Rock();
    grass = new Grass();
    axe = new Axe ();
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
    text ("Lumberjack", width/2, 180);
    textSize (25);
    textAlign(CENTER);
    text ("Hey buddy, if you're doing nothing,", width/2, 220);
    text ("I'd have a job for you and of course not for anything!", width/2, 250);
    text ("I'll give you an axe for that!", width/2, 280);
    text ("Just collect all the grass and stones you can find!", width/2, 310);
    noFill();
    image (arrow, width/2, 400);
    image (grass.item, 500, 400);
    image (rock.item, 370, 400);
    image (axe.item, 800, 400);
    if (inventory.numberOfGrass < 20) {
      image (cross, 500, 400);
    }
    if (inventory.numberOfRocks < 20) {
      image (cross, 370, 400);
    }
    rect (500, 400, 100, 100);
    rect (370, 400, 100, 100);
    rect (800, 400, 100, 100);
    imageMode(CORNER);
    rectMode (CORNER);
    textAlign(CORNER);
       strokeWeight(2);
  }

  void trade () {
    if (inventory.numberOfGrass == 20 && inventory.numberOfRocks == 20) {
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
