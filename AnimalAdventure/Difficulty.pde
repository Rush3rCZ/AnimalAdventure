class difficulty {
  int difficultySet, difficultyChange;
  difficulty () {
    difficultySet = 2;
    difficultyChange = 0;
  }
  void  hardDiff () {
    if (difficultySet == 3) {
      enemy.HP = 200;
      enemy.speed = 6;
      enemy.damage = 30;
    }
  }

  void mediumDiff () {
    if (difficultySet == 2) {
      enemy.HP = 100;
      enemy.speed = 4;
      enemy.damage = 20;
    }
  }

  void easyDiff () {
    if (difficultySet == 1) {
      enemy.HP = 60;
      enemy.speed = 2;
      enemy.damage = 10;
    }
  }
}
