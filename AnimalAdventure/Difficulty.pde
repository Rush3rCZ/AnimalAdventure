class difficulty {
  int difficultySet, difficultyChange, updateDiff;
  int speed, hitCooldown, hitRange, damage, restartTime, diffHP, numberOfEnemies;
  float slowdown;
  difficulty () {
    difficultySet = 2;
    updateDiff = 0;
  }
  void difficultySetup () {
    if (difficultySet == 1) {
      if (updateDiff == 0) {
        speed = 3;
        hitCooldown = 3;
        hitRange = 80;
        slowdown = 4;
        damage = 10;
        restartTime = 10;
        diffHP = 100;
        player.damage = 51;
        numberOfEnemies = 5;
        for (int h = enemyArray.enemyArray1.size() - 1; h >= 0; h--) {
          enemy = enemyArray.enemyArray1.get(h);
          enemy.HP = diffHP;
        }
        updateDiff = 1;
      }
    }
    if (difficultySet == 2) {
      if (updateDiff == 0) {
        speed = 5;
        hitCooldown = 2;
        hitRange = 100;
        slowdown = 5.7;
        damage = 20;
        restartTime = 10;
        diffHP = 100;
        numberOfEnemies = 4;
        player.damage = 34;
        for (int h = enemyArray.enemyArray1.size() - 1; h >= 0; h--) {
          enemy = enemyArray.enemyArray1.get(h);
          enemy.HP = diffHP;
        }
        updateDiff = 1;
      }
    }
    if (difficultySet == 3) {
      if (updateDiff == 0) {
        speed = 6;
        hitCooldown = 1;
        hitRange = 100;
        slowdown = 6.3;
        damage = 34;
        restartTime = 8;
        diffHP = 100;
        player.damage = 26;
        numberOfEnemies = 4;
        for (int h = enemyArray.enemyArray1.size() - 1; h >= 0; h--) {
          enemy = enemyArray.enemyArray1.get(h);
          enemy.HP = diffHP;
        }
        updateDiff = 1;
      }
    }
  }
}
