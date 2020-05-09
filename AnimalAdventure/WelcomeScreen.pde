class welcomeScreen {
  PImage  welcomeScreen, optionsScreen, loadingScreen;
  float volume;
  welcomeScreen () {
    welcomeScreen = loadImage ("WelcomeScreen.png");
    optionsScreen = loadImage ("OptionsScreen.png");
    loadingScreen = loadImage ("loadingScreen.png");
  }

  void displayWecomingScreen () {
    image (welcomeScreen, 0, 0);
  }

  void displayOptionsScreen () {
    image (optionsScreen, 0, 0);
  }

  void displayLoadingScreen() {
    image (loadingScreen, 0, 0);
  }

  void musicInWelcomeAndOptions () {
    if (i19 < 1) {
 if (menu.isPlaying()) {
      } else {
        menu.play();
      }
      menu.amp(0.04);
    }
    if (i19 == 2) {
      menu.pause();
    }
  }

  void musicInGame () {
    if (i20 < 1) {
      if (game.isPlaying()) {
      } else {
        game.play();
      }
      game.amp(0.08);
    }
    if (i20 == 2) {
      game.pause();
    }
  }
}
