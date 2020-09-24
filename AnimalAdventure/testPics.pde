class test {
  PImage cake, wheat, flour, paper, fish, axe, hoe, hammer, fishingRod;
  test () {
    cake = loadImage ("cake.png");
    wheat = loadImage ("wheat.png");
    flour = loadImage ("flour.png");
    paper = loadImage ("paper.png");
    fish = loadImage ("fish.png");
    axe = loadImage ("axe.png");
    hoe = loadImage ("hoe.png");
    hammer = loadImage ("hammer.png");
    fishingRod = loadImage ("fishingRod.png");

    cake.resize (100, 100);
    wheat.resize (100, 100);
    flour.resize (100, 100);
    paper.resize (100, 100);
    fish.resize (100, 100);
    axe.resize (100, 100);
    hoe.resize (100, 100);
    hammer.resize (100, 100);
    fishingRod.resize (100, 100);
  }


  void display() {
    imageMode (CENTER);
    image (cake, 60, mouseY);
    image (wheat, 60 + 120, mouseY);
    image (flour, 60 + 240, mouseY);
    image (paper, 60 + 360, mouseY);
    image (fish, 60 + 480, mouseY);
    image (axe, 60 + 600, mouseY);
    image (hoe, 60 + 720, mouseY);
    image (hammer, 60 + 840, mouseY);
    image (fishingRod, 60 + 960, mouseY);
    imageMode (CORNER);
  }
}
