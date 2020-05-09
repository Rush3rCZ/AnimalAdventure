import processing.sound.*; //<>//
SoundFile clak;
SoundFile menu;
SoundFile game;

backGround background;
player player;
object object;
welcomeScreen welcomeScreen;
buttons buttons;
treesAndHouses treesAndHouses;
rocksAndGrass rocksAndGrass;
ArrayRocksAndGrass ArrayRocksAndGrass;
boolean welcomeScreenActivated, gameHasStarted, optionsAreOpened, optionsInGameAreOpened, gamePaused;
int i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22; // i používám pro ovládání zvuku v DRAW()

void setup () {
  size (1300, 700, P2D);
  background = new backGround();
  player = new player();
  object = new object();
  welcomeScreen = new welcomeScreen ();
  buttons = new buttons();
  treesAndHouses = new treesAndHouses ();
  rocksAndGrass = new rocksAndGrass();
  ArrayRocksAndGrass = new ArrayRocksAndGrass();
  welcomeScreenActivated = false;
  gameHasStarted = true;
  optionsAreOpened = false;
  gamePaused = false;
  optionsInGameAreOpened = false;
  clak = new SoundFile (this, "clak.mp3");
  menu = new SoundFile (this, "MenuSound.mp3");
  game = new SoundFile (this, "inGameSound.mp3");
}


void draw () {
  background (255);
  buttons.soundsOff();
  if (welcomeScreenActivated) {
    welcomeScreen.musicInWelcomeAndOptions();  
    welcomeScreen.displayWecomingScreen();
    buttons.buttonsGetsBiggerInWelcome();
  }
  if (gameHasStarted) {
    welcomeScreen.musicInGame();
    background.display(); 
    object.displayBridgeUnder(); 
    treesAndHouses.displayHouseUnder();
    treesAndHouses.displayTreeUnder();
    ArrayRocksAndGrass.displayGrass();
    ArrayRocksAndGrass.displayRock();
    player.display();
    object.displayBridgeAbove(); 
    treesAndHouses.displayHouseAbove();
    treesAndHouses.displayTreeAbove();
    background.endBackground(); 
    background.moveBackground(); 
    player.movePlayer(); 
    player.playerBorders(); 
    buttons.displayInGame();
    welcomeScreen.musicInGame();
  }
  if (optionsAreOpened) {
    welcomeScreen.displayOptionsScreen();
    buttons.buttonsGetBiggerInOptions();
    object.tickDisplay();
    welcomeScreen.musicInWelcomeAndOptions();
  }
  if (gamePaused) {
    welcomeScreen.musicInGame();
    pausedDisplayedTextures ();
    buttons.displayInPausedGame();
    buttons.buttonsGetsBiggerWhenGamePaused();
  }
  if (optionsInGameAreOpened) {
    welcomeScreen.musicInGame();
    pausedDisplayedTextures ();
    buttons.displayInGameOptions();
    buttons.buttonsGetsBiggerInGameOptions();
    object.tickDisplay();
  }
  buttons.fpsOnDisplay();
  textSize (20);
  text ("X:  " + (background.backgroundX - mouseX), mouseX, mouseY);
  text ("Y:  " + (background.backgroundY - mouseY), mouseX, mouseY + 20);
}

void keyPressed() {
  if (gameHasStarted) {
    background.keyMoveBackgroundCONTROL();
    player.keyMovePlayerCONTROL();
    player.debugPlayer();
    rocksAndGrass.replace();
    ArrayRocksAndGrass.addNewGrass();
    ArrayRocksAndGrass.addNewRock();
  }
}


void keyReleased() {
  if (gameHasStarted) {
    background.keyDontMoveBackgroundCONTROL();
    player.keyDontMovePlayerCONTROL ();
  }
}

void mousePressed () {
  buttons.clickOnButton();
}


void pausedDisplayedTextures () {
  background.display(); 
  object.displayBridgeUnder(); 
  treesAndHouses.displayHouseUnder();
  treesAndHouses.displayTreeUnder();
  player.display();
  treesAndHouses.displayHouseAbove();
  object.displayBridgeAbove();
  treesAndHouses.displayTreeAbove();
}
