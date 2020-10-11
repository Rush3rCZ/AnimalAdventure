class Houses {
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

  PImage tree, house, mill;
  int houseX1, houseX2, houseX3, houseX4, houseX5, houseX6, houseX7, houseX8, houseY1, houseY2, houseY3, houseY4, houseY5, houseY6, houseY7, houseY8, millX, millY;
  Houses () {
    tree = loadImage("tree.png");
    house = loadImage ("house.png");
    mill = loadImage ("mill.png");
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
  void displayMillUnder() {
    millX = background.backgroundX + 2800;
    millY = background.backgroundY + 600;
    if (millY + 500 <= player.playerY  + 90) {
      imageMode (CENTER);
      image (mill, millX, millY);
      imageMode (CORNER);
    }
  }

  void displayMillAbove() {
    millX = background.backgroundX + 2800;
    millY = background.backgroundY + 600;
    if (millY + 500 >= player.playerY  + 90) {
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
    if (houseY1 + 200 <= player.playerY  + 90) {
      image (house, houseX1, houseY1);
    }
    if (farmer.y + 95 <= player.playerY  + 90) {
      farmer.display();
    }
    if (houseY2 + 200 <= player.playerY  + 90) {
      image (house, houseX2, houseY2);
    }
    if (fisherman.y + 95 <= player.playerY  + 90) {
      fisherman.display();
    }
    if (teacher.y + 95 <= player.playerY  + 90) {
      teacher.display();
    }
    if (houseY3 + 200 <= player.playerY  + 90) {
      image (house, houseX3, houseY3);
    }
    if (hunter.y + 95 <= player.playerY  + 90) {
      hunter.display();
    }
    if (houseY8 + 200 <= player.playerY  + 90) {
      image (house, houseX8, houseY8);
    }
    if (joiner.y + 95 <= player.playerY  + 90) {
      joiner.display();
    }
    if (builder.y + 95 <= player.playerY  + 90) {
      builder.display();
    }
    if (houseY4 + 200 <= player.playerY  + 90) {
      image (house, houseX4, houseY4);
    }
    if (lumberjack.y + 95 <= player.playerY  + 90) {
      lumberjack.display();
    }
    if (houseY5 + 200 <= player.playerY  + 90) {
      image (house, houseX5, houseY5);
    }
    if (miller.y + 95 <= player.playerY  + 90) {
      miller.display();
    }
    if (houseY6 + 200 <= player.playerY  + 90) {
      image (house, houseX6, houseY6);
    }
    if (baker.y + 95 <= player.playerY  + 90) {
      baker.display();
    }
    if (houseY7 + 200 <= player.playerY  + 90) {
      image (house, houseX7, houseY7);
    }
    if (admin.y + 95 <= player.playerY  + 90) {
      admin.display();
    }
    if (blacksmith.y + 95 <= player.playerY  + 90) {
      blacksmith.display();
    }
    imageMode (CORNER);
  }

  void displayHouseAbove() {
      imageMode (CENTER);
      if (houseY1 + 200 >= player.playerY  + 90) {
        image (house, houseX1, houseY1);
      }
      if (farmer.y + 95 >= player.playerY  + 90) {
        farmer.display();
      }
      if (houseY2 + 200 >= player.playerY  + 90) {
        image (house, houseX2, houseY2);
      }
      if (fisherman.y + 95 >= player.playerY  + 90) {
        fisherman.display();
      }
      if (teacher.y + 95 >= player.playerY  + 90) {
        teacher.display();
      }
      if (houseY3 + 200 >= player.playerY  + 90) {
        image (house, houseX3, houseY3);
      }
      if (hunter.y + 95 >= player.playerY  + 90) {
        hunter.display();
      }
      if (houseY8 + 200 >= player.playerY  + 90) {
        image (house, houseX8, houseY8);
      }
      if (joiner.y + 95 >= player.playerY  + 90) {
        joiner.display();
      }
      if (builder.y + 95 >= player.playerY  + 90) {
        builder.display();
      }
      if (houseY4 + 200 >= player.playerY  + 90) {
        image (house, houseX4, houseY4);
      }
      if (lumberjack.y + 95 >= player.playerY  + 90) {
        lumberjack.display();
      }
      if (houseY5 + 200 >= player.playerY  + 90) {
        image (house, houseX5, houseY5);
      }
      if (miller.y + 95 >= player.playerY  + 90) {
        miller.display();
      }
      if (houseY6 + 200 >= player.playerY  + 90) {
        image (house, houseX6, houseY6);
      }
      if (baker.y + 95 >= player.playerY  + 90) {
        baker.display();
      }
      if (houseY7 + 200 >= player.playerY  + 90) {
        image (house, houseX7, houseY7);
      }
      if (admin.y + 95 >= player.playerY  + 90) {
        admin.display();
      }
      if (blacksmith.y + 95 >= player.playerY  + 90) {
        blacksmith.display();
      }
      imageMode (CORNER);
  }
}

class Tree {
  Axe a;
  PImage tree, stump;
  float x, y, col, randomY, randomX, count;
  boolean chopedDown;
  ArrayList <WoodLog> ArrayLog;
  Tree () {
    tree = loadImage ("tree.png");
    a = new Axe();
    stump = loadImage ("stump.png");
    randomY = (int) random (-20, 20);
    //randomY = 0;
    randomX = (int) random (-10, 10);
    col = 0.5;
    chopedDown = false;
    ArrayLog = new ArrayList <WoodLog>();
  }

  void displayAbove() {
    x = background.backgroundX + ((treeArray.row*treeArray.plus) + randomX);
    y = background.backgroundY + (col*200 + randomY);
    if (y + 175 >= player.playerY  + 95) {
      imageMode(CENTER);
      fill(255, 0, 0);
      if (!chopedDown) {
        image(tree, x, y);
      } else {
        image(stump, x, y);
      }
      imageMode(CORNER);
    }
    for (Items item : inventory.items) {
      if (!chopedDown && item.id == 4 && mouseX < x + 45 && mouseX > x - 45 && mouseY < y + 150 && mouseY > y - 150) {
        fill (94, 255, 97);
        stroke(0);
        rect (mouseX - 3, mouseY - 22, 123, 30, 10);
        fill(0);
        text ("Chop down!", mouseX, mouseY);
        image(a.item, mouseX, mouseY);
        noFill();
        noStroke();
      }
      if (!chopedDown && item.id == 4 && mousePressed && mouseX < x + 45 && mouseX > x - 45 && mouseY < y + 150 && mouseY > y - 150 && mouseButton == LEFT) { // item.id == 4 &&
        ArrayLog.add(new WoodLog());
        chopedDown = true;
      }
    }
  }

  void displayUnder() {
    x = background.backgroundX + ((treeArray.row*treeArray.plus) + randomX);
    y = background.backgroundY + (col*200 + randomY);
    if (y + 175 <= player.playerY  + 95) {
      imageMode(CENTER);
      fill(255, 0, 0);
      if (!chopedDown) {
        image(tree, x, y);
      } else {
        image(stump, x, y);
      }
      imageMode(CORNER);
    }
  }

  void addLog () {
    if (chopedDown) {
      for (int i = ArrayLog.size() - 1; i >= 0; i--) {
        WoodLog wl = ArrayLog.get(i);
        wl.itemX1 =(int) x;
        wl.itemY1 =(int) y + 200;
        wl.display();
        if (mousePressed && wl.clicked() && mouseButton == LEFT) {
          inventory.numberOfWoodLogs++;
          ArrayLog.remove(i);
        }
      }
    }
  }
}


class TreeArray {
  ArrayList<Tree> tree;
  float h, trec, row, plus;

  TreeArray () {
    tree = new ArrayList<Tree>();
    plus = 300;
    for (int z = 0; z < 27; z++) {
      tree.add(new Tree());
    }
  }

  void displayLog () {
    for (int i = tree.size() - 1; i >= 0; i--) {
      Tree t = tree.get(i);
      t.addLog();
    }
  }

  void under () {
    trec = 0;
    row = 0;
    for (int i = tree.size() - 1; i >= 0; i--) {
      Tree t = tree.get(i); 
      row++;
      trec++;

      if (trec > 9) {
        t.col = 1.5;
        if (trec == 10) {
          row = 1.5;
          plus = 300;
        }
      }

      if (trec > 15) {
        t.col = 2.5;
        if (trec == 16) {
          row = 2.1;
          plus = 300;
        }
      }

      if (trec > 20) {
        t.col = 3.6;
        if (trec == 21) {
          row = 3;
          plus = 280;
        }
      }
      if (trec > 24) {
        t.col = 4.6;
        if (trec == 25) {
          row = 4.2;
          plus = 250;
        }
      }
      t.displayUnder();
    }
  }


  void above () {
    trec = 0;
    row = 0;
    for (int i = tree.size() - 1; i >= 0; i--) {
      Tree t = tree.get(i); 
      row++;
      trec++;

      if (trec > 9) {
        t.col = 1.5;
        if (trec == 10) {
          row = 1.5;
          plus = 300;
        }
      }

      if (trec > 15) {
        t.col = 2.5;
        if (trec == 16) {
          row = 2.1;
          plus = 300;
        }
      }

      if (trec > 20) {
        t.col = 3.6;
        if (trec == 21) {
          row = 3;
          plus = 280;
        }
      }
      if (trec > 24) {
        t.col = 4.6;
        if (trec == 25) {
          row = 4.2;
          plus = 250;
        }
      }
      t.displayAbove();
    }
  }
}
