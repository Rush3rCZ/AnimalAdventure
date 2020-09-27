class treesAndHouses {
  Lumberjack lumberjack;
  PImage tree, house, mill;
  int houseX1, houseX2, houseX3, houseX4, houseX5, houseX6, houseX7, houseX8, houseY1, houseY2, houseY3, houseY4, houseY5, houseY6, houseY7, houseY8, millX, millY;
  int treeX1, treeX2, treeX3, treeX4, treeX5, treeX6, treeX7, treeX8, treeX9, treeX10, treeX11, treeX12, treeX13, treeX14, treeX15, treeX16, treeY1, treeY2, treeY3, treeY4, treeY5, treeY6, treeY7, treeY8, treeY9, treeY10, treeY11, treeY12, treeY13, treeY14, treeY15, treeY16;
  treesAndHouses () {
    tree = loadImage("tree.png");
    house = loadImage ("house.png");
    mill = loadImage ("mill.png");
    lumberjack = new Lumberjack();
  }
  void displayMillUnder() {
    millX = background.backgroundX + 2800;
    millY = background.backgroundY + 600;
    if (millY + 500 < player.playerY  + 90) {
      imageMode (CENTER);
      image (mill, millX, millY);
      imageMode (CORNER);
    }
  }

  void displayMillAbove() {
    millX = background.backgroundX + 2800;
    millY = background.backgroundY + 600;
    if (millY + 500 > player.playerY  + 90) {
      imageMode (CENTER);
      image (mill, millX, millY);
      imageMode (CORNER);
    }
  }

  void displayHouseUnder() {
    imageMode (CENTER);
    houseX1 = background.backgroundX + 2370;
    houseX2 = background.backgroundX + 2730;
    houseX3 = background.backgroundX + 3100;
    houseX4 = background.backgroundX + 3230;
    houseX5 = background.backgroundX + 2875;
    houseX6 = background.backgroundX + 3205;
    houseX7 = background.backgroundX + 2578;
    houseX8 = background.backgroundX + 2960;
    houseY1 = background.backgroundY + 2000;
    houseY2 = background.backgroundY + 1860;
    houseY3 = background.backgroundY + 1700;
    houseY4 = background.backgroundY + 2400;
    houseY5 = background.backgroundY + 2530;
    houseY6 = background.backgroundY + 2800;
    houseY7 = background.backgroundY + 2320;
    houseY8 = background.backgroundY + 2130;
    if (houseY1 + 200 < player.playerY  + 90) {
      image (house, houseX1, houseY1);
    }
    if (houseY2 + 200 < player.playerY  + 90) {
      image (house, houseX2, houseY2);
    }
    if (houseY3 + 200 < player.playerY  + 90) {
      image (house, houseX3, houseY3);
    }
    if (houseY8 + 200 < player.playerY  + 90) {
      image (house, houseX8, houseY8);
    }
    if (houseY4 + 200 < player.playerY  + 90) {
      image (house, houseX4, houseY4);
    }
    if (lumberjack.y + 95 < player.playerY  + 90) {
      lumberjack.display();
    }
    if (houseY5 + 200 < player.playerY  + 90) {
      image (house, houseX5, houseY5);
    }
    if (houseY6 + 200 < player.playerY  + 90) {
      image (house, houseX6, houseY6);
    }
    if (houseY7 + 200 < player.playerY  + 90) {
      image (house, houseX7, houseY7);
    }
    imageMode (CORNER);
  }

  void displayHouseAbove() {
    imageMode (CENTER);
    if (houseY1 + 200 > player.playerY  + 90) {

      image (house, houseX1, houseY1);
    }
    if (houseY2 + 200 > player.playerY  + 90) {
      image (house, houseX2, houseY2);
    }
    if (houseY3 + 200 > player.playerY  + 90) {
      image (house, houseX3, houseY3);
    }
    if (houseY8 + 200 > player.playerY  + 90) {
      image (house, houseX8, houseY8);
    }
    if (houseY4 + 200 > player.playerY  + 90) {
      image (house, houseX4, houseY4);
    }
    if (lumberjack.y + 95 > player.playerY  + 90) {
      lumberjack.display();
    }
    if (houseY5 + 200 > player.playerY  + 90) {
      image (house, houseX5, houseY5);
    }
    if (houseY6 + 200 > player.playerY  + 90) {
      image (house, houseX6, houseY6);
    }
    if (houseY7 + 200 > player.playerY  + 90) {
      image (house, houseX7, houseY7);
    }
    imageMode (CORNER);
  }

  void displayTreeUnder() {
    imageMode (CENTER);
    treeX1 = background.backgroundX + 344;
    treeX2 = background.backgroundX + 644;
    treeX3 = background.backgroundX + 870;
    treeX4 = background.backgroundX + 1165;
    treeX5 = background.backgroundX + 1400;
    treeX6 = background.backgroundX + 1700;
    treeX7 = background.backgroundX + 2000;
    treeX8 = background.backgroundX + 938;
    treeX9 = background.backgroundX + 505;
    treeX10 = background.backgroundX +761;
    treeX11 = background.backgroundX + 1023;
    treeX12 = background.backgroundX + 1304;
    treeX13 = background.backgroundX + 1686;
    treeX14 = background.backgroundX + 1216;
    treeX15 = background.backgroundX + 1913;
    treeY1 = background.backgroundY + 141;
    treeX16 = background.backgroundX + 1518;
    treeY2 = background.backgroundY + 173;
    treeY3 = background.backgroundY + 177;
    treeY4 = background.backgroundY + 245;
    treeY5 = background.backgroundY + 162;
    treeY6 = background.backgroundY + 200;
    treeY7 = background.backgroundY + 100;
    treeY8 = background.backgroundY + 688;
    treeY9 = background.backgroundY + 339;
    treeY10 = background.backgroundY + 484;
    treeY11 = background.backgroundY + 430;
    treeY12 = background.backgroundY + 477;
    treeY13 = background.backgroundY + 485;
    treeY14 = background.backgroundY + 759;
    treeY15 = background.backgroundY + 378;
    treeY16 = background.backgroundY + 683;
    if (treeY1 + 20 <= player.playerY  + 90) {
      image (tree, treeX1, treeY1);
    }
    if (treeY2 + 200 < player.playerY  + 90) {
      image (tree, treeX2, treeY2);
    }
    if (treeY3 + 200 < player.playerY  + 90) {
      image (tree, treeX3, treeY3);
    }
    if (treeY4 + 200 < player.playerY  + 90) {
      image (tree, treeX4, treeY4);
    }
    if (treeY5 + 200 < player.playerY  + 90) {
      image (tree, treeX5, treeY5);
    }
    if (treeY6 + 200 < player.playerY  + 90) {
      image (tree, treeX6, treeY6);
    }
    if (treeY7 + 200 < player.playerY  + 90) {
      image (tree, treeX7, treeY7);
    }
    if (treeY9 + 200 <= player.playerY  + 90) {
      image (tree, treeX9, treeY9);
    }
    if (treeY10 + 200 < player.playerY  + 90) {
      image (tree, treeX10, treeY10);
    }
    if (treeY11 + 200 < player.playerY  + 90) {
      image (tree, treeX11, treeY11);
    }
    if (treeY12 + 200 < player.playerY  + 90) {
      image (tree, treeX12, treeY12);
    }
    if (treeY13 + 200 < player.playerY  + 90) {
      image (tree, treeX13, treeY13);
    }
    if (treeY15 + 200 < player.playerY  + 90) {
      image (tree, treeX15, treeY15);
    }
    if (treeY8 + 200 < player.playerY  + 90) {
      image (tree, treeX8, treeY8);
    }
    if (treeY14 + 200 < player.playerY  + 90) {
      image (tree, treeX14, treeY14);
    }
    if (treeY16 + 200 < player.playerY  + 90) {
      image (tree, treeX16, treeY16);
    }
    imageMode (CORNER);
  }

  void displayTreeAbove() {
    if (treeY1 + 200 > player.playerY  + 90) {
      image (tree, treeX1, treeY1);
    }
    if (treeY2 + 200 > player.playerY  + 90) {
      image (tree, treeX2, treeY2);
    }
    if (treeY3 + 200 > player.playerY  + 90) {
      image (tree, treeX3, treeY3);
    }
    if (treeY4 + 200 > player.playerY  + 90) {
      image (tree, treeX4, treeY4);
    }
    if (treeY5 + 200 > player.playerY  + 90) {
      image (tree, treeX5, treeY5);
    }
    if (treeY6 + 200 > player.playerY  + 90) {
      image (tree, treeX6, treeY6);
    }
    if (treeY7 + 200 > player.playerY  + 90) {
      image (tree, treeX7, treeY7);
    }
    if (treeY9 + 200 >= player.playerY  + 90) {
      image (tree, treeX9, treeY9);
    }
    if (treeY10 + 200 > player.playerY  + 90) {
      image (tree, treeX10, treeY10);
    }
    if (treeY11 + 200 > player.playerY  + 90) {
      image (tree, treeX11, treeY11);
    }
    if (treeY12 + 200 > player.playerY  + 90) {
      image (tree, treeX12, treeY12);
    }
    if (treeY13 + 200 > player.playerY  + 90) {
      image (tree, treeX13, treeY13);
    }
    if (treeY15 + 200 > player.playerY  + 90) {
      image (tree, treeX15, treeY15);
    }
    if (treeY8 + 200 > player.playerY  + 90) {
      image (tree, treeX8, treeY8);
    }
    if (treeY14 + 200 > player.playerY  + 90) {
      image (tree, treeX14, treeY14);
    }
    if (treeY16 + 200 > player.playerY  + 90) {
      image (tree, treeX16, treeY16);
    }
    imageMode(CORNER);
  }
}
