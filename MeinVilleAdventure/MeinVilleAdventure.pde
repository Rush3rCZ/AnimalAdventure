import processing.sound.*;  //<>//
SoundFile clak;
//SoundFile menu;
//SoundFile game;
Items item;
Rock rock;

backGround background;
player player;
object object;
welcomeScreen welcomeScreen;
buttons buttons;
Houses houses;
ArrayRocksAndGrass ArrayRocksAndGrass;
inventory inventory;
Items items;
difficulty difficulty;
Enemy enemy;
EnemyArray enemyArray;
ShootingArray shootingArray;
ArrayHealingPotion arrayHealingPotion;
VillagerFunction villagerFunction;
AddItems addItems;
TreeArray treeArray;
ArrayFishes fishArray;
boolean welcomeScreenActivated, gameHasStarted, optionsAreOpened, optionsInGameAreOpened, gamePaused, inventoryIsOpened, readAStory, tradeOpen, spawnHammer;
int i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31; // i používám pro ovládání zvuku v DRAW()

void setup () {
  size (1300, 700);
  item = new Items();

  background = new backGround();
  player = new player();
  object = new object();
  welcomeScreen = new welcomeScreen ();
  buttons = new buttons();
  houses = new Houses ();
  ArrayRocksAndGrass = new ArrayRocksAndGrass();
  inventory = new inventory ();
  items = new Items ();
  enemy = new Enemy();
  difficulty = new difficulty ();
  enemyArray = new EnemyArray ();
  shootingArray = new ShootingArray();
  arrayHealingPotion = new ArrayHealingPotion();
  villagerFunction = new VillagerFunction ();
  addItems = new AddItems();
  treeArray = new TreeArray();
  fishArray = new ArrayFishes();
  rock = new  Rock();
  welcomeScreenActivated = true;
  gameHasStarted = false;
  optionsAreOpened = false;
  gamePaused = false;
  optionsInGameAreOpened = false;
  inventoryIsOpened = false;
  readAStory = false;
  tradeOpen = false;
  clak = new SoundFile (this, "clak.mp3");
  //menu = new SoundFile (this, "MenuSound.mp3");
  //game = new SoundFile (this, "inGameSound.mp3");
}


void draw () {
  background (255);
  buttons.soundsOff();
  buttons.DiffTimer();
  if (welcomeScreenActivated) {
    welcomeScreen.musicInWelcomeAndOptions();  
    welcomeScreen.displayWecomingScreen();
    buttons.buttonsGetsBiggerInWelcome();
  }
  if (gameHasStarted) {
    difficulty.difficultySetup();
    enemyArray.timeStarts = true;
    enemyArray.newEnemy();
    arrayHealingPotion.newHealing();
    welcomeScreen.musicInGame();
    addItems.itemUse();
    background.display(); 
    object.displayBridgeUnder(); 
    houses.displayHouseUnder();
    houses.displayMillUnder();
    treeArray.under();
    ArrayRocksAndGrass.displayGrass();
    ArrayRocksAndGrass.displayRock();
    treeArray.displayLog();
    fishArray.display();
    arrayHealingPotion.displayHealing();
    player.display();
    enemyArray.display();
    shootingArray.display();
    addItems.display();
    object.displayBridgeAbove(); 
    houses.displayMillAbove();
    houses.displayHouseAbove();
    treeArray.above();
    inventory.display(); 
    background.endBackground(); 
    player.debugPlayer();
    background.moveBackground();
    player.movePlayer();
    player.playerBorders(); 
    buttons.displayInGame();
    player.healthBar();
    welcomeScreen.musicInGame();
  }
  if (optionsAreOpened) {
    difficulty.difficultySetup();
    welcomeScreen.displayOptionsScreen();
    buttons.buttonsGetBiggerInOptions();
    object.tickDisplay();
    welcomeScreen.musicInWelcomeAndOptions();
  }

  if (tradeOpen) {
    addItems.itemUse();
    pausedDisplayedTextures();
    villagerFunction.display();
  }  
  if (gamePaused) {
    welcomeScreen.musicInGame();
    pausedDisplayedTextures ();
    buttons.displayInPausedGame();
    buttons.buttonsGetsBiggerWhenGamePaused();
  }
  if (optionsInGameAreOpened) {
    difficulty.difficultySetup();
    welcomeScreen.musicInGame();
    pausedDisplayedTextures ();
    buttons.displayInGameOptions();
    buttons.buttonsGetsBiggerInGameOptions();
    object.tickDisplay();
  }
  if (readAStory) {
    pausedDisplayedTextures ();
    buttons.displayInReadAStory();
    buttons.buttonsGetBiggerInReadAStory();
  }
  //fill(255, 0, 0);
  //fill (0);
  //text ("X: " + mouseX, mouseX, mouseY);
  //text ("Y: " + mouseY, mouseX, mouseY - 20);
  //text ("x: " + player.playerX, 20, 320);
  //text ("y: " + player.playerY, 20, 320 + 20);
  text (" difficulty.changeAfterStart: " +  difficulty.changeAfterStart, 20, 450);
  //text ("down: " + background.moveDownBackground, mouseX, mouseY - 60);
  //text ("enemy.y:  " + enemy.position.y, mouseX, mouseY + 20);
  //text ("numberOfItemsInInventory:  " + inventory.numberOfItemsInInventory, 20, 100);
  //text ("inventory.numberOfGrass:  " + inventory.numberOfGrass, 20, 120);
  //text ("onePercentOfHP:  " + test, 20, 320 + 120);
  //text ("timeStarts:  " + enemyArray.timeStarts, 20, 320); 
  //text ("Time:  " + arrayHealingPotion.time + "s", 20, 320 + 20);
  ////text ("EnemyInterval:  " + arrayHealingPotion.interval + "s", 20, 320 + 40);
  //text ("RestartTime:  " + difficulty.restartTime + "s", 20, 320 + 60);
  //text ("item.spawn:  " + spawnHammer, 20, 320 + 60);
  //text ("FishArray:  " + fishArray.ArrayFish.size(), 20, 360);
  //text ("hue: " + hue(get(rock.itemX, rock.itemY + 70)) + "saturation: " + saturation(get(rock.itemX, rock.itemY + 70)) + "brightness: " + brightness(get(rock.itemX, rock.itemY + 70)), mouseX, mouseY);
  //noFill();


  enemyArray.timer();
  arrayHealingPotion.timer();
  buttons.fpsOnDisplay();
}


void keyPressed() {
  if (gameHasStarted) {
    arrayHealingPotion.useHeal();
    background.keyMoveBackgroundCONTROL();
    player.keyMovePlayerCONTROL();
    inventory.openInventory();
  }
}


void keyReleased() {
  if (gameHasStarted) {
    arrayHealingPotion.unUseHeal();
    background.keyDontMoveBackgroundCONTROL();
    player.keyDontMovePlayerCONTROL ();
  }
}

void mousePressed () {
  villagerFunction.click();
  buttons.clickOnButton();
  shootingArray.newShot();
}


void pausedDisplayedTextures () {
  background.display(); 
  object.displayBridgeUnder(); 
  houses.displayHouseUnder();
  treeArray.under();
  player.display();
  for (int j = enemyArray.enemyArray1.size() - 1; j >= 0; j--) {
    enemy = enemyArray.enemyArray1.get(j);
    enemy.display();
  }
  for (int i = shootingArray.SA.size() - 1; i >= 0; i--) {
    Shot shot = shootingArray.SA.get(i);
    shot.display();
  }
  houses.displayHouseAbove();
  object.displayBridgeAbove();
  treeArray.above();
}
