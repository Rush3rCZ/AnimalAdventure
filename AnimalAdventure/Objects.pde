class object {
  PImage bridgeUnder, bridgeAbove, tick, grayBackground, pausedScreen, optionsScreenInGame, TeddySkin, PennySkin, TeddySkin2, PennySkin2;
  int bridgeX, bridgeY, tickPlace, gray;

  object () {
    bridgeUnder = loadImage ("BridgeUnder.png");
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
}
