class buttons {
  int inGameOptionsButtonX, inGameOptionsButtonY, SkinPennyX, SkinPennyY, SkinTeddyX, SkinTeddyY, soundButtonX, soundButtonY, onX, onY, offX, offY, onX2, onY2, offX2, offY2, language, languageX, languageY, controlsButtonX, controlsButtonY, enterButtonX, enterButtonY;
  int backToTheGameButtonX, backToTheGameButtonY, backToTheMenuButtonX, backToTheMenuButtonY, backToTheOptionsButtonX, backToTheOptionsButtonY, fpsButtonX, fpsButtonY, warningButtonX, warningButtonY, crossX, crossY, anotherButtonX, anotherButtonY, firstLog1;
  int  c, widthOfButtons, heightOfButtons, widthOfBack, heightOfBack, optionsX, optionsY, playX, playY, backX, backY, readAStoryX, readAStoryY, easyButtonX, mediumButtonX, hardButtonX, easyButtonY, mediumButtonY, hardButtonY, previousButtonX, previousButtonY;
  PImage playButton, optionsButton, backButton, inGameOptionsButtonPink, inGameOptionsButtonGreen, backToTheGameButton, playButtonBig, readAStoryButton, readAStoryButtonBig, onButton, offButton, controlsButton, controlsButtonBig, enterButtonGreen, enterButtonGreenBig;
  PImage backToTheMenuButton, backToTheOptionsButton, optionsButtonBig, backButtonBig, backToTheGameButtonBig, backToTheMenuButtonBig, backToTheOptionsButtonBig, soundButton, soundOffButton, anotherButton, anotherButtonBig, previousButton, previousButtonBig;
  PImage offButtonBig, onButtonBig, offButtonBig2, onButtonBig2, fpsButton, fpsOffButton, offButton2, onButton2, czechButton, czechButtonBig, englishButton, englishButtonBig, millEnterScreen, enterButtonGrey, enterButtonGreyBig;
  PImage easyButton, mediumButton, hardButton, easyButtonBig, mediumButtonBig, hardButtonBig, warningButton, warningBubble, buttonsFunction, buttonsFunction2, cross1, cross1Big;
  boolean soundsOn, fpsOn, areThereAllKeys, isThere2nd, isThere3rd, isThere1st, isThere4th;
  float Dtime, DcountSeconds;
  String Btext, Ctext;
  Key1 key1;
  Key2 key2;
  Key3 key3;
  Key4 key4;


  buttons () {
    enterButtonGrey = loadImage ("enterButtonGrey.png");
    enterButtonGreyBig = loadImage ("enterButtonGrey.png");
    enterButtonGreen = loadImage ("enterButtonGreen.png");
    enterButtonGreenBig = loadImage ("enterButtonGreen.png");
    millEnterScreen = loadImage ("millEnterScreen.png");
    cross1 = loadImage("cross1.png");
    previousButton = loadImage ("previousButton.png");
    previousButtonBig = loadImage ("previousButton.png");
    anotherButton = loadImage ("anotherButton.png");
    anotherButtonBig = loadImage ("anotherButton.png");
    cross1Big = loadImage("cross1.png");
    buttonsFunction = loadImage ("ButtonsFunction.png");
    buttonsFunction2 = loadImage ("ButtonsFunction2.png");
    controlsButton = loadImage ("controlsButton.png");
    controlsButtonBig = loadImage ("controlsButton.png");
    czechButton = loadImage ("czechButton.png");
    czechButtonBig = loadImage ("czechButton.png");    
    englishButton = loadImage ("englishButton.png");    
    englishButtonBig = loadImage ("englishButton.png"); 
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
    enterButtonGreenBig.resize(220, 60);
    enterButtonGreyBig.resize(220, 60);
    cross1Big.resize(120, 120);
    anotherButtonBig.resize(120, 120);
    previousButtonBig.resize(120, 120);
    czechButtonBig.resize (220, 60);
    englishButtonBig. resize (220, 60);
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
    controlsButtonBig.resize (85, 85);

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
    firstLog1 = 0;
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
    enterButtonX = width/2;
    enterButtonY = 520;
    language = 1;
    soundsOn = false;
    fpsOn = true;
    c = 0;
    DcountSeconds = millis();
    key1 = new Key1();
    key2 = new Key2();
    key3 = new Key3();
    key4 = new Key4();
  }

  void enteringTheMill () {
    imageMode(CORNER);
    textAlign(CENTER);
    stroke (0);
    fill (0);
    textSize (25);
    image (object.grayBackground, 0, 0);
    imageMode (CENTER);
    image (millEnterScreen, width/2, height/2);
    textSize (25);
    if (buttons.language ==  1) {
      Btext = "I see you already have the key! But are you sure you want to enter a boss fight? Make sure you have enough healing!";
      Ctext = "You have to get the key first! Listen to the villagers!";
    } else {
      Btext = "Vidím, že už máš složený klíč! Ale jsi si jistý, že chceš vstoupit na boss fight? Ujisti se, že máš dostatek léčivých lektvarů!";
      Ctext = "Nejdřív musíš sehnat klíč! Naslouchej vesničanům!";
    }
    if (areThereAllKeys) {
      text (Btext, width/2 - 350, height/2 - 150, 700, 400);
    } else {
      text (Ctext, width/2 - 350, height/2 - 150, 700, 400);
    }
    if (isThere4th) {
      image (key4.item, 661, 306 + 60);
    }
    if (isThere3rd) {
      image (key3.item, 618, 315 + 60);
    }
    if (isThere2nd) {
      image (key2.item, 631, 360 + 60);
    }
    if (isThere1st) {
      image (key1.item, 680, 340 + 60);
    }
    imageMode (CORNER);
    textAlign(CORNER);
  }

  void endCross() {
    crossX = 1020;
    crossY = 120;
    if (mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      image (cross1Big, crossX, crossY);
      if (i31 < 1) {
        clak.play();
        i31 = 1;
      }
    } else {
      image (cross1, crossX, crossY);
      i31 = 0;
    }
  }

  void areThereKeys () {
    inventory.isKey1In = false;
    inventory.isKey2In = false;
    inventory.isKey3In = false;
    inventory.isKey4In = false;
    for (Items item : inventory.items) {
      if (item.id == 16) {
        if (inventory.isKey4In == false) {
          isThere4th = true;
          inventory.isKey4In = true;
        } else {
          isThere4th = false;
        }
      }
      if (item.id == 15) {
        if (inventory.isKey3In == false) {
          isThere3rd = true;
          inventory.isKey3In = true;
        } else {
          isThere3rd = false;
        }
      }
      if (item.id == 14) {
        if (inventory.isKey2In == false) {
          isThere2nd = true;
          inventory.isKey2In = true;
        } else {
          isThere2nd = false;
        }
      }
      if (item.id == 13) {
        if (inventory.isKey1In == false) {
          isThere1st = true;
          inventory.isKey1In = true;
        } else {
          isThere1st = false;
        }
      }
    }

    if (isThere1st && isThere2nd && isThere3rd && isThere4th) {
      areThereAllKeys = true;
    } else {
      areThereAllKeys = false;
    }
  }


  void enterButton () {
    imageMode(CENTER);
    if (mouseX < enterButtonX + 100 && mouseX > enterButtonX - 100 && mouseY < enterButtonY + 25 && mouseY > enterButtonY - 25) {
      if (areThereAllKeys) {
        image (enterButtonGreenBig, enterButtonX, enterButtonY);
      } else {
        image (enterButtonGreyBig, enterButtonX, enterButtonY);
      }
      if (i30 < 1) {
        clak.play();
        i30 = 1;
      }
    } else {
      if (areThereAllKeys) {
        image (enterButtonGreen, enterButtonX, enterButtonY);
      } else {
        image (enterButtonGrey, enterButtonX, enterButtonY);
      }
      i30 = 0;
    }
  }
  void displayInFirstLog  () {
    if (firstLog1 == 0) {
      imageMode (CENTER);
      image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
      imageMode(CORNER);
      image (object.grayBackground, 0, 0);
      imageMode (CENTER);
      if (language == 2) {
        image (object.CzechStoryLine, width/2, height/2);
      }
      if (language == 1) {
        image (object.EnglishStoryLine, width/2, height/2);
      }
      imageMode (CORNER);
    }
    if (firstLog1 == 1) {
      imageMode (CENTER);
      image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
      imageMode(CORNER);
      image (object.grayBackground, 0, 0);
      imageMode (CENTER);
      image (buttonsFunction2, width/2, height/2);
      imageMode (CORNER);
    }
  }

  void buttonsGetsBiggerInFirstLog () {
    imageMode (CENTER);
    if (firstLog1 == 0) {
      languageX = 1180;
      languageY = 60;
      anotherButtonX = 950;
      anotherButtonY = 625;
      if (mouseX < anotherButtonX + 50 && mouseX > anotherButtonX - 50 && mouseY < anotherButtonY + 50 && mouseY > anotherButtonY - 50) {
        image (anotherButtonBig, anotherButtonX, anotherButtonY);
        if (i31 < 1) {
          clak.play();
          i31 = 1;
        }
      } else {
        image (anotherButton, anotherButtonX, anotherButtonY);
        i31 = 0;
      }


      if (mouseX < languageX + 100 && mouseX > languageX - 100 && mouseY < languageY + 25 && mouseY > languageY - 25) {
        if (language == 1) {
          image (czechButtonBig, languageX, languageY);
        }
        if (language == 2) {
          image (englishButtonBig, languageX, languageY);
        }
        if (i29 < 1) {
          clak.play();
          i29 = 1;
        }
      } else {
        if (language == 1) {
          image (czechButton, languageX, languageY);
        }
        if (language == 2) {
          image (englishButton, languageX, languageY);
        }
        i29 = 0;
      }
    } 
    if (firstLog1 == 1) {
      anotherButtonX = 950;
      anotherButtonY = 575;
      previousButtonX = 350;
      previousButtonY = 575;
      if (mouseX < anotherButtonX + 50 && mouseX > anotherButtonX - 50 && mouseY < anotherButtonY + 50 && mouseY > anotherButtonY - 50) {
        image (anotherButtonBig, anotherButtonX, anotherButtonY);
        if (i33 < 1) {
          clak.play();
          i33 = 1;
        }
      } else {
        image (anotherButton, anotherButtonX, anotherButtonY);
        i33 = 0;
      }
      if (mouseX < previousButtonX + 50 && mouseX > previousButtonX - 50 && mouseY < previousButtonY + 50 && mouseY > previousButtonY - 50) {
        image (previousButtonBig, previousButtonX, previousButtonY);
        if (i34 < 1) {
          clak.play();
          i34 = 1;
        }
      } else {
        image (previousButton, previousButtonX, previousButtonY);
        i34 = 0;
      }
    }
    imageMode (CENTER);
  }

  void soundsOff () {
    if (soundsOn == false) {
      if (c == 0) {
        clak.amp(0);
        i19 = 2;
        i20 = 2;
        welcomeScreen.z = 0;
        welcomeScreen.l = 0;
        c = 1;
      }
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
    controlsButtonX = 880;
    controlsButtonY = 170;
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

    if (mouseX < controlsButtonX + 37 && mouseX > controlsButtonX - 37 && mouseY < controlsButtonY + 37 && mouseY > controlsButtonY - 37) {
      image (controlsButtonBig, controlsButtonX, controlsButtonY);
      if (i32 < 1) {
        clak.play();
        i32 = 1;
      }
    } else {
      image (controlsButton, controlsButtonX, controlsButtonY);
      i32 = 0;
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

  void buttonsGetsBiggerInControls () {
    crossX = 1025;
    crossY = 75;
    imageMode(CORNER);
    image (object.grayBackground, 0, 0);
    imageMode (CENTER);
    image (buttonsFunction, width/2, height/2);
    if (mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      image (cross1Big, crossX, crossY);
      if (i31 < 1) {
        clak.play();
        i31 = 1;
      }
    } else {
      image (cross1, crossX, crossY);
      i31 = 0;
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

  void buttonsGetBiggerInReadAStory () {
    backX = 200;
    backY = 60;
    languageX = 1180;
    languageY = 60;
    imageMode (CENTER);
    if (mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      backButtonBig.resize (90, 90);
      image (backButtonBig, backX, backY);
      if (i28 < 1) {
        clak.play();
        i28 = 1;
      }
    } else {
      backButton.resize (80, 80);
      image (backButton, backX, backY);
      i28 = 0;
    }
    if (mouseX < languageX + 100 && mouseX > languageX - 100 && mouseY < languageY + 25 && mouseY > languageY - 25) {
      if (language == 1) {
        image (czechButtonBig, languageX, languageY);
      }
      if (language == 2) {
        image (englishButtonBig, languageX, languageY);
      }
      if (i29 < 1) {
        clak.play();
        i29 = 1;
      }
    } else {
      if (language == 1) {
        image (czechButton, languageX, languageY);
      }
      if (language == 2) {
        image (englishButton, languageX, languageY);
      }
      i29 = 0;
    }
    imageMode (CORNER);
  }

  void displayInReadAStory () {
    imageMode (CENTER);
    image (inGameOptionsButtonPink, inGameOptionsButtonX, inGameOptionsButtonY);
    imageMode(CORNER);
    image (object.grayBackground, 0, 0);
    imageMode (CENTER);
    if (language == 2) {
      image (object.CzechStoryLine, width/2, height/2);
    }
    if (language == 1) {
      image (object.EnglishStoryLine, width/2, height/2);
    }
    imageMode (CORNER);
  }

  void buttonsGetBiggerInOptions () {
    stroke (0);
    controlsButtonX = 1100;
    controlsButtonY = 280;
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

    if (mouseX < controlsButtonX + 37 && mouseX > controlsButtonX - 37 && mouseY < controlsButtonY + 37 && mouseY > controlsButtonY - 37) {
      image (controlsButtonBig, controlsButtonX, controlsButtonY);
      if (i32 < 1) {
        clak.play();
        i32 = 1;
      }
    } else {
      image (controlsButton, controlsButtonX, controlsButtonY);
      i32 = 0;
    }

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

  void DiffTimer () {
    Dtime = ((millis() - DcountSeconds) /1000);
  }

  void clickOnButton () {
    if (welcomeScreenActivated && mouseX < playX + widthOfButtons/2 && mouseX > playX - widthOfButtons/2 && mouseY < playY + heightOfButtons/2 && mouseY > playY - heightOfButtons/2) {
      if (firstLog1 == 0) {
        firstLogIn = true;
      }
      welcomeScreen.displayLoadingScreen();
      enemyArray.timeStarts = true;
      difficulty.updateDiff = 0;
      enemyArray.countSeconds = millis();
      if (i27 < 1) {
        difficulty.difficultyChange = 1;
        i27 = 1;
      }
      welcomeScreenActivated = false;
      gameHasStarted = true;
      difficulty.changeAfterStart++;
      if (soundsOn) {
        i20 = 0;
      } else { 
        i20 = 2;
      }
      //menu.stop();
    }
    if (welcomeScreenActivated && mouseX < optionsX + widthOfButtons/2 && mouseX > optionsX - widthOfButtons/2 && mouseY < optionsY + heightOfButtons/2 && mouseY > optionsY - heightOfButtons/2) {
      welcomeScreenActivated = false;
      optionsAreOpened = true;
    }
    if (optionsAreOpened && mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      welcomeScreenActivated = true;
      controlsAreOpened  = false;
      gameHasStarted = false;
      optionsAreOpened = false;
    }
    if (readAStory && mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      readAStory = false;
      gamePaused = true;
    }
    if (readAStory && mouseX < languageX + 100 && mouseX > languageX - 100 && mouseY < languageY + 25 && mouseY > languageY - 25) {
      if (language == 1) {
        language = 2;
      } else {
        language = 1;
      }
    }
    if (firstLogIn && mouseX < languageX + 100 && mouseX > languageX - 100 && mouseY < languageY + 25 && mouseY > languageY - 25) {
      if (language == 1) {
        language = 2;
      } else {
        language = 1;
      }
    }
    if (gamePaused && mouseX < readAStoryX + 200 && mouseX > readAStoryX - 200 && mouseY < readAStoryY + 50 && mouseY > readAStoryY - 50) {
      gamePaused = false;
      readAStory = true;
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
      enemyArray.timeStarts = false;
    }
    if (gamePaused && mouseX < backToTheGameButtonX + 200 && mouseX > backToTheGameButtonX - 200 && mouseY < backToTheGameButtonY + 50 && mouseY > backToTheGameButtonY - 50) {
      gameHasStarted = true;
      gamePaused = false;
      enemyArray.countSeconds = millis();
      enemyArray.timeStarts = true;
    }
    if (gamePaused && mouseX < backToTheMenuButtonX + 200 && mouseX > backToTheMenuButtonX - 200 && mouseY < backToTheMenuButtonY + 50 && mouseY > backToTheMenuButtonY - 50) {
      //game.stop();
      if (soundsOn) {
        i19 = 0;
      } else { 
        i19 = 2;
      }
      welcomeScreenActivated = true;
      gamePaused = false;
      gameHasStarted = false;
    }
    if (gamePaused && mouseX < backToTheOptionsButtonX + 200 && mouseX > backToTheOptionsButtonX - 200 && mouseY < backToTheOptionsButtonY + 50 && mouseY > backToTheOptionsButtonY - 50) {
      DcountSeconds =  millis();
      Dtime = ((millis() - DcountSeconds) /1000);
      gamePaused = false;
      optionsInGameAreOpened = true;
    }
    if (optionsInGameAreOpened && mouseX < backX + widthOfBack/2 && mouseX > backX - widthOfBack/2 && mouseY < backY + heightOfBack/2 && mouseY > backY - heightOfBack/2) {
      welcomeScreenActivated = false;
      controlsAreOpened  = false;
      optionsInGameAreOpened = false;
      gamePaused = true;
    }
    if (optionsAreOpened && mouseX < offX + 40 && mouseX > offX - 40 && mouseY < offY + 20 && mouseY > offY - 20) {
      soundsOn = false;
    }
    if (optionsAreOpened && mouseX < onX + 20 && mouseX > onX - 20 && mouseY < onY + 20 && mouseY > onY - 20) {
      soundsOn = true;
      clak.amp(0.8);
      c = 0;
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
      clak.amp(0.8);
      c = 0;
      i20 = 0;
      i19 =0;
    }
    if (optionsInGameAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && Dtime > 0.5 && mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 2;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }
    if (optionsInGameAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && Dtime > 0.5 && mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 1;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }
    if (optionsInGameAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && Dtime > 0.5 && mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 3;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }
    if (optionsAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && mouseX < mediumButtonX + 175 && mouseX > mediumButtonX - 175 && mouseY < mediumButtonY + 67/2 && mouseY > mediumButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 2;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }
    if (optionsAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && mouseX < easyButtonX + 175 && mouseX > easyButtonX - 175 && mouseY < easyButtonY + 67/2 && mouseY > easyButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 1;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }
    if (optionsAreOpened && !controlsAreOpened && difficulty.changeAfterStart < 2 && mouseX < hardButtonX + 175 && mouseX > hardButtonX - 175 && mouseY < hardButtonY + 67/2 && mouseY > hardButtonY - 67/2) {
      difficulty.updateDiff = 0;
      difficulty.difficultySet = 3;
      if (difficulty.changeAfterStart == 1) {
        difficulty.changeAfterStart = 2;
      }
    }

    if (optionsAreOpened && mouseX < controlsButtonX + 37 && mouseX > controlsButtonX - 37 && mouseY < controlsButtonY + 37 && mouseY > controlsButtonY - 37) {
      controlsAreOpened = true;
    }
    if (optionsInGameAreOpened && mouseX < controlsButtonX + 37 && mouseX > controlsButtonX - 37 && mouseY < controlsButtonY + 37 && mouseY > controlsButtonY - 37) {
      controlsAreOpened = true;
    }
    if (controlsAreOpened && mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50) {
      controlsAreOpened = false;
    }
    if (firstLogIn && firstLog1 == 0 && mouseX < anotherButtonX + 50 && mouseX > anotherButtonX - 50 && mouseY < anotherButtonY + 50 && mouseY > anotherButtonY - 50) {
      DcountSeconds = millis();
      Dtime = ((millis() - DcountSeconds) /1000);
      firstLog1 = 1;
    }
    if (firstLogIn && firstLog1 == 1 && Dtime > 0.5 && mouseX < anotherButtonX + 50 && mouseX > anotherButtonX - 50 && mouseY < anotherButtonY + 50 && mouseY > anotherButtonY - 50) {
      firstLog1 = 2;
      firstLogIn = false;
      gameHasStarted = true;
    }
    if (firstLogIn && firstLog1 == 1 && Dtime > 0.5 && mouseX < previousButtonX + 50 && mouseX > previousButtonX - 50 && mouseY < previousButtonY + 50 && mouseY > previousButtonY - 50) {
      firstLog1--;
    }

    if (gameHasStarted && mouseX < houses.openMillX + 55 && mouseX > houses.openMillX - 55 && mouseY < houses.openMillY + 100 && mouseY > houses.openMillY - 100  &&  mouseButton == RIGHT) {
      enteringTheBoss= true;
      gameHasStarted = false;
    }
    if (enteringTheBoss && mouseX < crossX + 50 && mouseX > crossX - 50 && mouseY < crossY + 50 && mouseY > crossY - 50 && mouseButton == LEFT) {
      enteringTheBoss= false;
      gameHasStarted = true;
    }
    if (enteringTheBoss && mouseX < enterButtonX + 100 && mouseX > enterButtonX - 100 && mouseY < enterButtonY + 25 && mouseY > enterButtonY - 25) {
      gameHasStarted = false;
      bossHasStarted = true;
    }
  }
}
