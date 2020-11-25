import processing.sound.*;  //<>//
SoundFile clak;
//SoundFile menu;
//SoundFile game;
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
BossBackground bossBackground;
BossPlayer bossPlayer;
boolean welcomeScreenActivated, gameHasStarted, optionsAreOpened, optionsInGameAreOpened, gamePaused, inventoryIsOpened, readAStory, tradeOpen, spawnHammer, controlsAreOpened, firstLogIn, enteringTheBoss, bossHasStarted;
int i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, i32, i33, i34, i35; // i používám pro ovládání zvuku v DRAW()
int stageOfGame;

void setup () {
  size (1300, 700);
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
  bossBackground = new BossBackground();
  bossPlayer = new BossPlayer();
  welcomeScreenActivated = false;
  gameHasStarted = false;
  optionsAreOpened = false;
  gamePaused = false;
  optionsInGameAreOpened = false;
  inventoryIsOpened = false;
  readAStory = false;
  tradeOpen = false;
  spawnHammer = false;
  controlsAreOpened = false;
  firstLogIn = false;
  enteringTheBoss = false;
  bossHasStarted = true;
  clak = new SoundFile (this, "clak.mp3");
  //menu = new SoundFile (this, "MenuSound.mp3");
  //game = new SoundFile (this, "inGameSound.mp3");
  stageOfGame = 0;
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
    houses.enterMillUnder();
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
    houses.enterMillAbove();
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
  if (bossHasStarted) {
    difficulty.difficultySetup();
    welcomeScreen.musicInGame();
    bossBackground.display(); 
    object.barrelsUnder();
    object.displaySlime();
    bossPlayer.display();
    object.barrelsAbove();
    bossPlayer.movePlayer();
    shootingArray.display();
    inventory.display(); 
    buttons.displayInBoss();
    bossPlayer.playerBorders(); 
    bossPlayer.debugPlayer();
    bossBackground.endBackground();
    bossBackground.moveBackground();
    bossPlayer.healthBar();
    bossPlayer.slowdown();
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
  if (controlsAreOpened) {
    buttons.buttonsGetsBiggerInControls();
  }
  if (firstLogIn) {
    pausedDisplayedTextures();
    buttons.displayInFirstLog();
    buttons.buttonsGetsBiggerInFirstLog();
    gameHasStarted = false;
  }
  if (enteringTheBoss) {
    pausedDisplayedTextures();
    buttons.areThereKeys();
    buttons.enteringTheMill();
    buttons.enterButton();
    buttons.endCross();
  }

  //fill(255, 0, 0);
  //fill (0);
  //image (key1.item, mouseX, mouseY);
  //text ("X: " + mouseX, mouseX, mouseY - 20);
  //text ("Y: " + mouseY, mouseX, mouseY);
  //text ("x: " + bossPlayer.playerX, 20, 320);
  //text ("y: " + bossPlayer.playerY, 20, 320 + 20);
  //text ("rightSide:  " + bossBackground.rightSide, 20, 100 + 60);
  //text ("leftSide:  " + bossBackground.leftSide, 20, 100 + 80);
  //text ("upSide:  " + bossBackground.upSide, 20, 100 + 100);
  //text ("downSide:  " + bossBackground.downSide, 20, 100 + 120);
  //text (" Dtime: " +  buttons.Dtime, 20, 450);
  //text ("stageOfGame: " + stageOfGame, 20, 200);
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
  //text ("hue: " + hue(get(mouseX, mouseY)) + "saturation: " + saturation(get(mouseX, mouseY)) + "brightness: " + brightness(get(mouseX, mouseY)), mouseX, mouseY);
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
  if (bossHasStarted) {
    arrayHealingPotion.useHeal();
    bossBackground.keyMoveBackgroundCONTROL();
    bossPlayer.keyMovePlayerCONTROL();
    inventory.openInventory();
  }
}


void keyReleased() {
  if (gameHasStarted) {
    arrayHealingPotion.unUseHeal();
    background.keyDontMoveBackgroundCONTROL();
    player.keyDontMovePlayerCONTROL ();
  }
  if (bossHasStarted) {
    arrayHealingPotion.unUseHeal();
    bossBackground.keyDontMoveBackgroundCONTROL();
    bossPlayer.keyDontMovePlayerCONTROL ();
  }
}

void mousePressed () {
  villagerFunction.click();
  buttons.clickOnButton();
  shootingArray.newShot();
}


void pausedDisplayedTextures () {
  if (stageOfGame == 0) {
    background.display(); 
    object.displayBridgeUnder(); 
    houses.displayHouseUnder();
    houses.displayMillUnder();
    houses.enterMillUnder();
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
    houses.displayMillAbove();
    houses.enterMillAbove();
    treeArray.above();
  }
  if (stageOfGame == 1) {
    bossBackground.display();
    bossPlayer.display();
    for (int i = shootingArray.SA.size() - 1; i >= 0; i--) {
      Shot shot = shootingArray.SA.get(i);
      shot.display();
    }
  }
}
