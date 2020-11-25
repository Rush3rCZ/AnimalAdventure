class object {
  PImage bridgeUnder, bridgeAbove, tick, grayBackground, pausedScreen, optionsScreenInGame, TeddySkin, PennySkin, TeddySkin2, PennySkin2, CzechStoryLine, EnglishStoryLine;
  int bridgeX, bridgeY, tickPlace, gray;
  float barrY;
  ArrayList <Slime> slimes;
  ArrayList <Barrel> barrels;
  float[][] sc = {{500, 500}, {1200, 1000}, {400, 1300}};
  //float[][] bc = {{1200, 500}, {600, 1000}, {1200, 500}};
  float[][] bc = {{1150, 250}, {200, 800}, {1200, 1200}};


  object () {
    slimes = new ArrayList <Slime>();
    barrels = new ArrayList <Barrel>();
    bridgeUnder = loadImage ("BridgeUnder.png");
    CzechStoryLine = loadImage ("CzechStoryLine.png");
    EnglishStoryLine = loadImage ("EnglishStoryLine.png");
    bridgeAbove = loadImage ("BridgeAbove.png");
    grayBackground = loadImage ("grayBackground.png");
    pausedScreen = loadImage ("pausedScreen.png");
    optionsScreenInGame = loadImage ("optionsScreenInGame.png");
    TeddySkin = loadImage ("TeddyFrontSide.png");
    PennySkin = loadImage ("PennyFrontSide.png");
    TeddySkin2 = loadImage ("TeddyFrontSide.png");
    PennySkin2 = loadImage ("PennyFrontSide.png");
    tick = loadImage ("tick.png");
    tick.resize (120, 120);
    tickPlace = 1;
    gray = 0;
    for (int i = 0; i < 3; i++) {
      slimes.add(new Slime(sc[i][0], sc[i][1]));
    }
    for (int i = 0; i < 3; i++) {
      barrels.add(new Barrel(bc[i][0], bc[i][1]));
    }
  }

  void displayBridgeUnder() {
    imageMode (CENTER);
    bridgeX = (background.backgroundX + 1225) + width/2;
    bridgeY = (background.backgroundY + 1611) + height/2;
    image (bridgeUnder, bridgeX, bridgeY);
    imageMode (CORNER);
  }

  void displayBridgeAbove() {
    imageMode (CENTER);
    bridgeX = (background.backgroundX + 1225) + width/2;
    bridgeY = (background.backgroundY + 1611) + height/2;
    image (bridgeAbove, bridgeX, bridgeY);
    imageMode (CORNER);
  }

  void tickDisplay () {
    if (tickPlace == 1) {
      imageMode(CENTER);
      image (tick, buttons.SkinTeddyX, buttons.SkinTeddyY);
      imageMode(CORNER);
    }
    if (tickPlace == 2) {
      imageMode(CENTER);
      image (tick, buttons.SkinPennyX, buttons.SkinPennyY);
      imageMode(CORNER);
    }
  }

  void barrelsUnder () {
    for (int i = barrels.size() - 1; i >= 0; i--) {
      Barrel ba = barrels.get(i);
      barrY = bossBackground.backgroundY + bc[i][1];
      if (barrY + (185 - 25) < bossPlayer.playerY  + 95) {
        ba.display();
      }
    }
  }

  void barrelsAbove () {
    for (int i = barrels.size() - 1; i >= 0; i--) {
      Barrel ba = barrels.get(i);
      barrY = bossBackground.backgroundY + bc[i][1];
      if (barrY + (185 - 25) >= bossPlayer.playerY  + 95) {
        ba.display();
      }
    }
  }


  void displaySlime () {
    for (int i = slimes.size() - 1; i >= 0; i--) {
      Slime slime = slimes.get(i);
      slime.display();
    }
    for (int i = slimes.size() - 1; i >= 0; i--) {
      Slime slime = slimes.get(i);
      if (slime.pointInEllipse(bossPlayer.nextX, bossPlayer.nextY, slime.x, slime.y, slime.widthOfEllipse, slime.heightOfEllipse)) {
        bossPlayer.inSlime = true;
        break;
      } else {
        bossPlayer.inSlime = false;
      }
    }
  }


  class Barrel {
    PImage img;
    float x, y, cx, cy;
    boolean isThere;
    Barrel (float inx, float iny) {
      img = loadImage ("fireBarrel.png");
      cx = inx;
      cy = iny;
      isThere = true;
    }

    void display () {
      if (isThere) {
        imageMode (CENTER);
        x = bossBackground.backgroundX + cx;
        y = bossBackground.backgroundY + cy;
        image (img, x, y);
        imageMode (CORNER);
      }
    }
  }

  class Slime {
    PImage slime;
    int widthOfEllipse, heightOfEllipse;
    float x, y, cx, cy;
    Slime (float inx, float iny) {
      slime = loadImage ("slime.png");
      widthOfEllipse = 250;
      heightOfEllipse = 120;
      cx = inx;
      cy = iny;
    }

    void display() {
      imageMode (CENTER);
      x = bossBackground.backgroundX + cx;
      y = bossBackground.backgroundY + cy;
      image (slime, x, y);
      imageMode (CORNER);
    }

    boolean pointInEllipse (float xPoint, float yPoint, float ellipseCenterX, float  ellipseCenterY, float widthOfEllipse, float heightOfEllipse) {
      float p = (pow((xPoint - ellipseCenterX), 2) / pow(widthOfEllipse/2, 2)) + (pow((yPoint - ellipseCenterY), 2) / pow(heightOfEllipse/2, 2));
      if (p <= 1) {
        return true;
      } else {
        return false;
      }
    }
  }
}
