class buttons {
  int inGameOptionsButtonX, inGameOptionsButtonY, SkinPennyX, SkinPennyY, SkinTeddyX, SkinTeddyY, soundButtonX, soundButtonY, onX, onY, offX, offY, onX2, onY2, offX2, offY2;
  int backToTheGameButtonX, backToTheGameButtonY, backToTheMenuButtonX, backToTheMenuButtonY, backToTheOptionsButtonX, backToTheOptionsButtonY, fpsButtonX, fpsButtonY, warningButtonX, warningButtonY;
  int  widthOfButtons, heightOfButtons, widthOfBack, heightOfBack, optionsX, optionsY, playX, playY, backX, backY, readAStoryX, readAStoryY, easyButtonX, mediumButtonX, hardButtonX, easyButtonY, mediumButtonY, hardButtonY;
  PImage playButton, optionsButton, backButton, inGameOptionsButtonPink, inGameOptionsButtonGreen, backToTheGameButton, playButtonBig, readAStoryButton, readAStoryButtonBig, onButton, offButton;
  PImage backToTheMenuButton, backToTheOptionsButton, optionsButtonBig, backButtonBig, backToTheGameButtonBig, backToTheMenuButtonBig, backToTheOptionsButtonBig, soundButton, soundOffButton;
  PImage offButtonBig, onButtonBig, offButtonBig2, onButtonBig2, fpsButton, fpsOffButton, offButton2, onButton2;
  PImage easyButton, mediumButton, hardButton, easyButtonBig, mediumButtonBig, hardButtonBig, warningButton, warningBubble;
  boolean soundsOn, fpsOn;


  buttons () {
    playButton = loadImage ("PlayButton.png");
    playButtonBig = loadImage ("PlayButton.png");
    optionsButton = loadImage ("OptionsButton.png");
    optionsButtonBig = loadImage ("OptionsButton.png");
    readAStoryButton = loadImage ("readAStoryButton.png");
    readAStoryButtonBig = loadImage ("readAStoryButton.png");
    backButton = loadImage ("backButton.png");
    backButtonBig = loadImage ("backButton.png");
    inGameOptionsButtonPink = loadImage ("inGameOptionsButtonPink.png");
    inGameOptionsButtonGreen = loadImage ("inGameOptionsButtonGreen.png");
    backToTheGameButton = loadImage ("backToTheGameButton.png");
    backToTheGameButtonBig = loadImage ("backToTheGameButton.png");
    backToTheMenuButton = loadImage ("backToTheMenuButton.png");
    backToTheMenuButtonBig = loadImage ("backToTheMenuButton.png");
    backToTheOptionsButton = loadImage ("backToTheOptionsButton.png");
    backToTheOptionsButtonBig = loadImage ("backToTheOptionsButton.png");
    soundButton = loadImage ("soundButton.png");
    soundOffButton = loadImage ("soundOffButton.png");
    offButton = loadImage ("offButton.png");
    onButton = loadImage ("onButton.png");
    offButtonBig = loadImage ("offButton.png");
    onButtonBig = loadImage ("onButton.png");
    fpsButton = loadImage ("fpsButton.png");
    fpsOffButton = loadImage ("fpsOffButton.png");
    offButton2 = loadImage ("offButton.png");
    onButton2 = loadImage ("onButton.png");
    offButtonBig2 = loadImage ("offButton.png");
    onButtonBig2 = loadImage ("onButton.png");
    easyButton = loadImage ("easyButton.png");
    mediumButton = loadImage ("mediumButton.png");
    hardButton = loadImage ("hardButton.png");
    easyButtonBig = loadImage ("easyButton.png");
    mediumButtonBig = loadImage ("mediumButton.png");
    hardButtonBig = loadImage ("hardButton.png");
    warningButton = loadImage ("warningButton.png");
    warningBubble = loadImage ("warningBubble.png");
    easyButtonBig.resize (370, 70);
    mediumButtonBig.resize (370, 70);
    hardButtonBig.resize (370, 70);
    optionsButtonBig.resize (520, 120);
    backButtonBig.resize (150, 150);
    readAStoryButtonBig. resize (420, 120);
    backToTheMenuButtonBig.resize (420, 120);
    backToTheGameButtonBig.resize (420, 120);
    backToTheOptionsButtonBig.resize (420, 120);
    inGameOptionsButtonPink.resize (60, 60);
    inGameOptionsButtonGreen.resize (70, 70);
    soundOffButton.resize (100, 100);
    soundButton.resize(100, 100);
    fpsOffButton.resize (100, 100);
    fpsButton.resize(100, 100);
    offButton.resize (60, 40);
    onButton.resize (40, 40);
    offButtonBig.resize (80, 60);
    onButtonBig.resize (60, 60);
    offButton2.resize (60, 40);
    onButton2.resize (40, 40);
    offButtonBig2.resize (80, 60);
    onButtonBig2.resize (60, 60);

    //----------Určení pozice tlačítek ----------//
    widthOfButtons = 500;
    heightOfButtons = 100;
    playButtonBig.resize (widthOfButtons + 20, heightOfButtons + 20);
    widthOfBack = 130;
    heightOfBack = 130;
    optionsX = 630;
    optionsY = 580;
    playX = 630;
    playY = 450;
    backX = 75;
    backY = 75;
    inGameOptionsButtonX = 40;
    inGameOptionsButtonY = 40;
    backToTheGameButtonX = width/2;
    backToTheGameButtonY = height/2 - 200;
    backToTheMenuButtonX = width/2;
    backToTheMenuButtonY =  height/2 - 80;
    backToTheOptionsButtonX = width/2;
    backToTheOptionsButtonY = height/2 + 40;
    readAStoryX = width/2;
    readAStoryY = height/2 + 160;
    SkinPennyX = width/2 + 100;
    SkinPennyY = height/2 + 225;
    SkinTeddyX = width/2 - 100;
    SkinTeddyY = height/2 + 225;
    soundButtonX = 400;
    soundButtonY = 600;
    soundsOn = false;
    fpsOn = true;
  }

  void soundsOff () {
    if (soundsOn == false) {
      clak.stop();
      i19 = 2;
      i20 = 2;
    }
  }

  void fpsOnDisplay() {
    if (fpsOn == true) {
      textSize (40);
      fill (255, 0, 0);
      text ("F   ", 10, 280);
      fill (0, 255, 0);
      text ("  P  ", 10, 280);
      fill (255, 216, 0);
      text ("    S: ", 10, 280);
      fill(0);
      text ("       " + (int)frameRate, 10, 280);
      textSize (20);
      noFill();
    }
  }



  void displayInGameOptions () {
    imageMode (CENTER);
    image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
    imageMode(CORNER);
    image (object.grayBackground, 0, 0);
    imageMode (CENTER);
    image (object.optionsScreenInGame, width/2, height/2);
    imageMode(CORNER);
  }

  void buttonsGetsBiggerInGameOptions () {
    imageMode(CENTER);
    rectMode (CENTER);
    stroke (0);
    SkinPennyX = width/2 + 75;
    SkinPennyY = height/2 + 175;
    SkinTeddyX = width/2 - 75;
    SkinTeddyY = height/2 + 175;
    backX = 320;
    backY = 120;
    widthOfBack = 70;
    heightOfBack = 70;
    mediumButtonX = hardButtonX;
    mediumButtonY = hardButtonY - 76;
    easyButtonX = hardButtonX;
    easyButtonY = hardButtonY - 76*2;
    hardButtonX = width/2;
    hardButtonY = height/2 + 35 - 60;
    warningButtonX = 440;
    warningButtonY = 170;
    onX = 430;
    onY = 490;
    offX = 360;
    offY = 490;
    onX2 = 930;
    onY2 = 480;
    offX2 = 860;
    offY2 = 480;
    fpsButtonX = 900;
    fpsButtonY = 560;
    soundButtonX = 400;
    soundButtonY = 560;

    if (mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      rectMode (CENTER);
      fill (94, 255, 97);
      rect (mediumButtonX, mediumButtonY, 360, 65);
      noFill();
      image (mediumButtonBig, mediumButtonX, mediumButtonY);
      if (i23 < 1) {
        clak.play();
        i23 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (mediumButtonX, mediumButtonY, 340, 60);
      noFill();
      image (mediumButton, mediumButtonX, mediumButtonY);
      i23 = 0;
    }

    if (mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      fill (94, 255, 97);
      rect (easyButtonX, easyButtonY, 360, 65);
      noFill();
      image (easyButtonBig, easyButtonX, easyButtonY);
      if (i24 < 1) {
        clak.play();
        i24 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (easyButtonX, easyButtonY, 340, 60);
      noFill();
      image (easyButton, easyButtonX, easyButtonY);
      i24 = 0;
    }

    if (mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      fill (94, 255, 97);
      rect (hardButtonX, hardButtonY, 360, 65);
      noFill();
      image (hardButtonBig, hardButtonX, hardButtonY);
      if (i25 < 1) {
        clak.play();
        i25 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (hardButtonX, hardButtonY, 340, 60);
      noFill();
      image (hardButton, hardButtonX, hardButtonY);
      i25 = 0;
    }

    if (soundsOn == false) {
      image (soundOffButton, soundButtonX, soundButtonY);
    } else {
      image (soundButton, soundButtonX, soundButtonY);
    }
    if (mouseX < offX + 40 && mouseX > offX - 40 && mouseY < offY + 20 && mouseY > offY - 20) {
      image (offButtonBig, offX, offY);
      if (i16 < 1) {
        clak.play();
        i16 = 1;
      }
    } else {
      image (offButton, offX, offY);
      i16 = 0;
    }
    if (mouseX < onX + 20 && mouseX > onX - 20 && mouseY < onY + 20 && mouseY > onY - 20) {
      image (onButtonBig, onX, onY);
      if (i17 < 1) {
        clak.play();
        i17 = 1;
      }
    } else {
      image (onButton, onX, onY);
      i17 = 0;
    }

    if (difficulty.difficultySet == 1) {
      fill (255, 101, 20);
      rect (easyButtonX, easyButtonY, 360, 65);
      noFill();
      image (easyButtonBig, easyButtonX, easyButtonY);
    }
    if (difficulty.difficultySet == 2) {
      fill (255, 101, 20);
      rect (mediumButtonX, mediumButtonY, 360, 65);
      noFill();
      image (mediumButtonBig, mediumButtonX, mediumButtonY);
    }
    if (difficulty.difficultySet == 3) {
      fill (255, 101, 20);
      rect (hardButtonX, hardButtonY, 360, 65);
      noFill();
      image (hardButtonBig, hardButtonX, hardButtonY);
    }

    if (fpsOn == false) {
      image (fpsOffButton, fpsButtonX, fpsButtonY);
    } else {
      image (fpsButton, fpsButtonX, fpsButtonY);
    }

    if (mouseX < offX2 + 40 && mouseX > offX2 - 40 && mouseY < offY2 + 20 && mouseY > offY2 - 20) {
      image (offButtonBig2, offX2, offY2);
      if (i21 < 1) {
        clak.play();
        i21 = 1;
      }
    } else {
      image (offButton2, offX2, offY2);
      i21 = 0;
    }
    if (mouseX < onX2 + 20 && mouseX > onX2 - 20 && mouseY < onY2 + 20 && mouseY > onY2 - 20) {
      image (onButtonBig2, onX2, onY2);
      if (i22 < 1) {
        clak.play();
        i22 = 1;
      }
    } else {
      image (onButton2, onX2, onY2);
      i22 = 0;
    }
    if (mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      backButtonBig.resize (90, 90);
      image (backButtonBig, backX, backY);
      if (i3 < 1) {
        clak.play();
        i3 = 1;
      }
    } else {
      backButton.resize (widthOfBack, heightOfBack);
      image (backButton, backX, backY);
      i3 = 0;
    }
    if (mouseX < SkinTeddyX + 75 && mouseX > SkinTeddyX - 75 && mouseY < SkinTeddyY + 100 && mouseY > SkinTeddyY - 100) {
      fill (94, 255, 97);
      strokeWeight (6);
      rect (SkinTeddyX, SkinTeddyY, 110, 160, 10);
      object.TeddySkin2.resize (150, 150);
      image (object.TeddySkin2, SkinTeddyX, SkinTeddyY);
      if (i4 < 1) {
        clak.play();
        i4 = 1;
      }
      noFill();
      strokeWeight (1);
    } else {
      noFill();
      strokeWeight (6);
      rect (SkinTeddyX, SkinTeddyY, 110, 160, 10);
      object.TeddySkin2.resize (150, 150);
      image ( object.TeddySkin2, SkinTeddyX, SkinTeddyY);
      i4 = 0;
      strokeWeight (1);
    }
    if (mouseX < SkinPennyX + 75 && mouseX > SkinPennyX - 75 && mouseY < SkinPennyY + 100 && mouseY > SkinPennyY - 100) {
      fill (94, 255, 97);
      strokeWeight (6);
      rect (SkinPennyX, SkinPennyY, 110, 160, 10);
      object.PennySkin2.resize (150, 150);
      image (object.PennySkin2, SkinPennyX, SkinPennyY);
      if (i5 < 1) {
        clak.play();
        i5 = 1;
      }
      noFill();
      strokeWeight (1);
    } else {
      noFill();
      strokeWeight (6);
      rect (SkinPennyX, SkinPennyY, 110, 160, 10);
      object.PennySkin2.resize (150, 150);
      image (object.PennySkin2, SkinPennyX, SkinPennyY);
      i5 = 0;
      strokeWeight (1);
    }
    if (mouseX < warningButtonX + 20 && mouseX > warningButtonX - 20 && mouseY < warningButtonY + 28 && mouseY > warningButtonY - 28) {
      image (warningButton, warningButtonX, warningButtonY);
      imageMode (CORNER);
      image (warningBubble, mouseX, mouseY);
      imageMode (CENTER);
      if (i26 < 1) {
        clak.play();
        i26 = 1;
      }
    } else {
      image (warningButton, warningButtonX, warningButtonY);
      i26 = 0;
    }
    imageMode (CORNER);
    rectMode(CORNER);
  }

  void buttonsGetsBiggerWhenGamePaused () {
    imageMode (CENTER);
    if (gamePaused && mouseX < backToTheGameButtonX + 200 && mouseX > backToTheGameButtonX - 200 && mouseY < backToTheGameButtonY + 50 && mouseY > backToTheGameButtonY - 50) {
      image (backToTheGameButtonBig, backToTheGameButtonX, backToTheGameButtonY);
      if (i6 < 1) {
        clak.play();
        i6 = 1;
      }
    } else {
      image (backToTheGameButton, backToTheGameButtonX, backToTheGameButtonY);
      i6 = 0;
    }
    if (gamePaused && mouseX < readAStoryX + 200 && mouseX > readAStoryX - 200 && mouseY < readAStoryY + 50 && mouseY > readAStoryY - 50) {
      image (readAStoryButtonBig, readAStoryX, readAStoryY);
      if (i7 < 1) {
        clak.play();
        i7 = 1;
      }
    } else {
      image (readAStoryButton, readAStoryX, readAStoryY);
      i7 = 0;
    }
    if (gamePaused && mouseX < backToTheMenuButtonX + 200 && mouseX > backToTheMenuButtonX - 200 && mouseY < backToTheMenuButtonY + 50 && mouseY > backToTheMenuButtonY - 50) {
      image (backToTheMenuButtonBig, backToTheMenuButtonX, backToTheMenuButtonY);
      if (i8 < 1) {
        clak.play();
        i8 = 1;
      }
    } else {
      image (backToTheMenuButton, backToTheMenuButtonX, backToTheMenuButtonY);
      i8 = 0;
    }
    if (gamePaused && mouseX < backToTheOptionsButtonX + 200 && mouseX > backToTheOptionsButtonX - 200 && mouseY < backToTheOptionsButtonY + 50 && mouseY > backToTheOptionsButtonY - 50) {
      image (backToTheOptionsButtonBig, backToTheOptionsButtonX, backToTheOptionsButtonY);
      if (i9 < 1) {
        clak.play();
        i9 = 1;
      }
    } else {
      image (backToTheOptionsButton, backToTheOptionsButtonX, backToTheOptionsButtonY);
      i9 = 0;
    }
    imageMode (CORNER);
  }

  void buttonsGetsBiggerInWelcome () {
    imageMode (CENTER);
    rectMode (CENTER);
    if (welcomeScreenActivated && mouseX < playX + widthOfButtons/2 && mouseX > playX - widthOfButtons/2 && mouseY < playY + heightOfButtons/2 && mouseY > playY - heightOfButtons/2) {
      image (playButtonBig, playX, playY);
      if (i1 < 1) {
        clak.play();
        i1++;
      }
    } else {
      playButton.resize (widthOfButtons, heightOfButtons);
      image (playButton, playX, playY);
      i1 = 0;
    }
    if (welcomeScreenActivated && mouseX < optionsX + widthOfButtons/2 && mouseX > optionsX - widthOfButtons/2 && mouseY < optionsY + heightOfButtons/2 && mouseY > optionsY - heightOfButtons/2) {
      image (optionsButtonBig, optionsX, optionsY);
      if (i2 < 1) {
        clak.play();
        i2 = 1;
      }
    } else {
      optionsButton.resize (widthOfButtons, heightOfButtons);
      image (optionsButton, optionsX, optionsY);
      i2 = 0;
    }
    imageMode (CORNER);
    rectMode (CORNER);
  }

  void buttonsGetBiggerInOptions () {
    stroke (0);
    onX = 360;
    onY = 510;
    offX = 225;
    offY = 510;
    onX2 = 1060;
    onY2 = 510;
    offX2 = 925;
    offY2 = 510;
    soundButtonX = 300;
    soundButtonY = 600;
    fpsButtonX = 1000;
    fpsButtonY = 600;
    backX = 75;
    backY = 75;
    warningButtonX = 440;
    warningButtonY = 305;
    widthOfBack = 130;
    heightOfBack = 130;
    mediumButtonX = width/2;
    mediumButtonY = height/2 + 35;
    easyButtonX = mediumButtonX - 380;
    easyButtonY = mediumButtonY;
    hardButtonX = mediumButtonX + 380;
    hardButtonY = mediumButtonY;
    SkinPennyX = width/2 + 100;
    SkinPennyY = height/2 + 225;
    SkinTeddyX = width/2 - 100;
    SkinTeddyY = height/2 + 225;
    imageMode (CENTER);
    rectMode (CENTER);

    if (mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      backButtonBig.resize (150, 150);
      image (backButtonBig, backX, backY);
      if (i10 < 1) {
        clak.play();
        i10 = 1;
      }
    } else {
      backButton.resize (widthOfBack, heightOfBack);
      image (backButton, backX, backY);
      i10 = 0;
    }

    if (mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      fill (94, 255, 97);
      rect (mediumButtonX, mediumButtonY, 360, 65);
      noFill();
      image (mediumButtonBig, mediumButtonX, mediumButtonY);
      if (i23 < 1) {
        clak.play();
        i23 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (mediumButtonX, mediumButtonY, 340, 60);
      noFill();
      image (mediumButton, mediumButtonX, mediumButtonY);
      i23 = 0;
    }

    if (mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      fill (94, 255, 97);
      rect (easyButtonX, easyButtonY, 360, 65);
      noFill();
      image (easyButtonBig, easyButtonX, easyButtonY);
      if (i24 < 1) {
        clak.play();
        i24 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (easyButtonX, easyButtonY, 340, 60);
      noFill();
      image (easyButton, easyButtonX, easyButtonY);
      i24 = 0;
    }

    if (mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      fill (94, 255, 97);
      rect (hardButtonX, hardButtonY, 360, 65);
      noFill();
      image (hardButtonBig, hardButtonX, hardButtonY);
      if (i25 < 1) {
        clak.play();
        i25 = 1;
      }
    } else {
      fill (94, 255, 97);
      rect (hardButtonX, hardButtonY, 340, 60);
      noFill();
      image (hardButton, hardButtonX, hardButtonY);
      i25 = 0;
    }
    if (difficulty.difficultySet == 1) {
      fill (255, 101, 20);
      rect (easyButtonX, easyButtonY, 360, 65);
      noFill();
      image (easyButtonBig, easyButtonX, easyButtonY);
    }
    if (difficulty.difficultySet == 2) {
      fill (255, 101, 20);
      rect (mediumButtonX, mediumButtonY, 360, 65);
      noFill();
      image (mediumButtonBig, mediumButtonX, mediumButtonY);
    }
    if (difficulty.difficultySet == 3) {
      fill (255, 101, 20);
      rect (hardButtonX, hardButtonY, 360, 65);
      noFill();
      image (hardButtonBig, hardButtonX, hardButtonY);
    }

    if (fpsOn == false) {
      image (fpsOffButton, fpsButtonX, fpsButtonY);
    } else {
      image (fpsButton, fpsButtonX, fpsButtonY);
    }
    if (soundsOn == false) {
      image (soundOffButton, soundButtonX, soundButtonY);
    } else {
      image (soundButton, soundButtonX, soundButtonY);
    }
    if (mouseX < offX + 40 && mouseX > offX - 40 && mouseY < offY + 20 && mouseY > offY - 20) {
      image (offButtonBig, offX, offY);
      if (i14 < 1) {
        clak.play();
        i14 = 1;
      }
    } else {
      image (offButton, offX, offY);
      i14 = 0;
    }

    if (mouseX < onX + 20 && mouseX > onX - 20 && mouseY < onY + 20 && mouseY > onY - 20) {
      image (onButtonBig, onX, onY);
      if (i15 < 1) {
        clak.play();
        i15 = 1;
      }
    } else {
      image (onButton, onX, onY);
      i15 = 0;
    }

    if (mouseX < offX2 + 40 && mouseX > offX2 - 40 && mouseY < offY2 + 20 && mouseY > offY2 - 20) {
      image (offButtonBig2, offX2, offY2);
      if (i21 < 1) {
        clak.play();
        i21 = 1;
      }
    } else {
      image (offButton2, offX2, offY2);
      i21 = 0;
    }
    if (mouseX < onX2 + 20 && mouseX > onX2 - 20 && mouseY < onY2 + 20 && mouseY > onY2 - 20) {
      image (onButtonBig2, onX2, onY2);
      if (i22 < 1) {
        clak.play();
        i22 = 1;
      }
    } else {
      image (onButton2, onX2, onY2);
      i22 = 0;
    }



    if (mouseX < SkinTeddyX + 75 && mouseX > SkinTeddyX - 75 && mouseY < SkinTeddyY + 100 && mouseY > SkinTeddyY - 100) {
      fill (94, 255, 97);
      strokeWeight (6);
      rect (SkinTeddyX, SkinTeddyY, 150, 200, 10);
      object.TeddySkin.resize (190, 190);
      image (object.TeddySkin, SkinTeddyX, SkinTeddyY);
      if (i11 < 1) {
        clak.play();
        i11 = 1;
      }
      noFill();
      strokeWeight (1);
    } else {
      noFill();
      strokeWeight (6);
      rect (SkinTeddyX, SkinTeddyY, 150, 200, 10);
      object.TeddySkin.resize (190, 190);
      image (object.TeddySkin, SkinTeddyX, SkinTeddyY);
      i11 = 0;
      strokeWeight (1);
    }
    if (mouseX < SkinPennyX + 75 && mouseX > SkinPennyX - 75 && mouseY < SkinPennyY + 100 && mouseY > SkinPennyY - 100) {
      fill (94, 255, 97);
      strokeWeight (6);
      rect (SkinPennyX, SkinPennyY, 150, 200, 10);
      object.PennySkin.resize (190, 190);
      image (object.PennySkin, SkinPennyX, SkinPennyY);
      if (i12 < 1) {
        clak.play();
        i12 = 1;
      }
      noFill();
      strokeWeight (1);
    } else {
      noFill();
      strokeWeight (6);
      rect (SkinPennyX, SkinPennyY, 150, 200, 10);
      object.PennySkin.resize (190, 190);
      image (object.PennySkin, SkinPennyX, SkinPennyY);
      i12 = 0;
      strokeWeight (1);
    }

    if (mouseX < warningButtonX + 20 && mouseX > warningButtonX - 20 && mouseY < warningButtonY + 28 && mouseY > warningButtonY - 28) {
      image (warningButton, warningButtonX, warningButtonY);
      imageMode (CORNER);
      image (warningBubble, mouseX, mouseY);
      imageMode (CENTER);
      if (i26 < 1) {
        clak.play();
        i26 = 1;
      }
    } else {
      image (warningButton, warningButtonX, warningButtonY);
      i26 = 0;
    }
    imageMode (CORNER);
    rectMode (CORNER);
  }

  void displayInGame () {
    imageMode(CENTER);
    if (gameHasStarted && mouseX < inGameOptionsButtonX + 30 && mouseX > inGameOptionsButtonX - 30 && mouseY < inGameOptionsButtonY + 30 && mouseY > inGameOptionsButtonY - 30) {
      image(inGameOptionsButtonGreen, inGameOptionsButtonX, inGameOptionsButtonY);
      if (i13 < 1) {
        clak.play();
        i13 = 1;
      }
    } else {
      image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
      i13 = 0;
    }
    imageMode (CORNER);
  }

  void displayInPausedGame () {
    imageMode (CENTER);
    image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
    imageMode (CORNER);
    image (object.grayBackground, 0, 0);
    imageMode (CENTER);
    image (object.pausedScreen, width/2, height/2);
    image (backToTheMenuButton, width/2, height/2 - 80);
    image (backToTheOptionsButton, width/2, height/2 + 40);
    imageMode (CORNER);
  }

  void clickOnButton () {
    if (welcomeScreenActivated && mouseX < playX + widthOfButtons/2 && mouseX > playX - widthOfButtons/2 && mouseY < playY + heightOfButtons/2 && mouseY > playY - heightOfButtons/2) {
      welcomeScreen.displayLoadingScreen();
      if (i27 < 1) {
        difficulty.difficultyChange = 1;
        enemy.timeStarts = true;
        i27 = 1;
      }
      welcomeScreenActivated = false;
      gameHasStarted = true;
      i20 = 0;
      menu.stop();
    }
    if (welcomeScreenActivated && mouseX < optionsX + widthOfButtons/2 && mouseX > optionsX - widthOfButtons/2 && mouseY < optionsY + heightOfButtons/2 && mouseY > optionsY - heightOfButtons/2) {
      welcomeScreenActivated = false;
      optionsAreOpened = true;
    }
    if (optionsAreOpened && mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      welcomeScreenActivated = true;
      gameHasStarted = false;
      optionsAreOpened = false;
    }
    if (optionsAreOpened && mouseX < SkinTeddyX + 75 && mouseX > SkinTeddyX - 75 && mouseY < SkinTeddyY + 100 && mouseY > SkinTeddyY - 100) {
      object.tickPlace = 1;
    }
    if (optionsAreOpened && mouseX < SkinPennyX + 75 && mouseX > SkinPennyX - 75 && mouseY < SkinPennyY + 100 && mouseY > SkinPennyY - 100) {
      object.tickPlace = 2;
    }
    if (optionsInGameAreOpened && mouseX < SkinTeddyX + 75 && mouseX > SkinTeddyX - 75 && mouseY < SkinTeddyY + 100 && mouseY > SkinTeddyY - 100) {
      object.tickPlace = 1;
    }
    if (optionsInGameAreOpened && mouseX < SkinPennyX + 75 && mouseX > SkinPennyX - 75 && mouseY < SkinPennyY + 100 && mouseY > SkinPennyY - 100) {
      object.tickPlace = 2;
    }
    if (gameHasStarted && mouseX < inGameOptionsButtonX + 30 && mouseX > inGameOptionsButtonX - 30 && mouseY < inGameOptionsButtonY + 30 && mouseY > inGameOptionsButtonY - 30) {
      gameHasStarted = false;
      gamePaused = true;
    }
    if (gamePaused && mouseX < backToTheGameButtonX + 200 && mouseX > backToTheGameButtonX - 200 && mouseY < backToTheGameButtonY + 50 && mouseY > backToTheGameButtonY - 50) {
      gameHasStarted = true;
      gamePaused = false;
    }
    if (gamePaused && mouseX < backToTheMenuButtonX + 200 && mouseX > backToTheMenuButtonX - 200 && mouseY < backToTheMenuButtonY + 50 && mouseY > backToTheMenuButtonY - 50) {
      game.stop();
      i19 = 0;
      welcomeScreenActivated = true;
      gamePaused = false;
      gameHasStarted = false;
    }
    if (gamePaused && mouseX < backToTheOptionsButtonX + 200 && mouseX > backToTheOptionsButtonX - 200 && mouseY < backToTheOptionsButtonY + 50 && mouseY > backToTheOptionsButtonY - 50) {
      gamePaused = false;
      optionsInGameAreOpened = true;
    }
    if (optionsInGameAreOpened && mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      welcomeScreenActivated = false;
      optionsInGameAreOpened = false;
      gamePaused = true;
    }
    if (optionsAreOpened && mouseX < offX + 40 && mouseX > offX - 40 && mouseY < offY + 20 && mouseY > offY - 20) {
      soundsOn = false;
    }
    if (optionsAreOpened && mouseX < onX + 20 && mouseX > onX - 20 && mouseY < onY + 20 && mouseY > onY - 20) {
      soundsOn = true;
      i20 = 0;
      i19 =0;
    }
    if (optionsAreOpened && mouseX < offX2 + 40 && mouseX > offX2 - 40 && mouseY < offY2 + 20 && mouseY > offY2 - 20) {
      fpsOn = false;
    }
    if (optionsAreOpened && mouseX < onX2 + 20 && mouseX > onX2 - 20 && mouseY < onY2 + 20 && mouseY > onY2 - 20) {
      fpsOn = true;
    }
    if (optionsInGameAreOpened && mouseX < offX2 + 40 && mouseX > offX2 - 40 && mouseY < offY2 + 20 && mouseY > offY2 - 20) {
      fpsOn = false;
    }
    if (optionsInGameAreOpened && mouseX < onX2 + 20 && mouseX > onX2 - 20 && mouseY < onY2 + 20 && mouseY > onY2 - 20) {
      fpsOn = true;
    }
    if (optionsInGameAreOpened && mouseX < offX + 40 && mouseX > offX - 40 && mouseY < offY + 20 && mouseY > offY - 20) {
      soundsOn = false;
    }
    if (optionsInGameAreOpened && mouseX < onX + 20 && mouseX > onX - 20 && mouseY < onY + 20 && mouseY > onY - 20) {
      soundsOn = true;
      i20 = 0;
      i19 =0;
    }
    if (optionsInGameAreOpened && mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 2;
      }
      difficulty.mediumDiff();
    }
    if (optionsInGameAreOpened && mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 1;
      }
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      difficulty.easyDiff();
    }
    if (optionsInGameAreOpened && mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 3;
      }
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      difficulty.hardDiff();
    }
    if (optionsAreOpened && mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 2;
      }
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      difficulty.mediumDiff();
    }
    if (optionsAreOpened && mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 1;
      }
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      difficulty.easyDiff();
    }
    if (optionsAreOpened && mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      if (difficulty.difficultyChange < 2) {
        difficulty.difficultySet = 3;
      }
      if (difficulty.difficultyChange == 1) {
        difficulty.difficultyChange = 2;
      }
      difficulty.hardDiff();
    }
  }
}
