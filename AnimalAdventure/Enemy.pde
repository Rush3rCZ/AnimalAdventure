class Enemy {
  int HP, hitTimer, countSeconds1, s;
  float distance, onePercentOfHP, howManyTimes, defernceBetweenHPs, HPStill;
  PVector position, playerXY, acceleration, velocity;
  PImage enemy;

  Enemy () {
    playerXY = new PVector (player.playerX, player.playerY);
    position = new PVector (random (background.backgroundX, background.backgroundX + 3500), random (background.backgroundY, background.backgroundY + 3500));
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    enemy = loadImage ("enemy.png");
    s = 0;
  }

  void display () {
    if (s == 0) {
      HP = difficulty.diffHP;
      s = 1;
    }
    imageMode (CENTER);
    image (enemy, position.x, position.y);
    imageMode (CORNER);
    rectMode (CORNER);
    strokeWeight(2);
    onePercentOfHP = difficulty.diffHP/100;
    howManyTimes = 100/onePercentOfHP;
    defernceBetweenHPs = difficulty.diffHP - HP;
    HPStill = (onePercentOfHP*howManyTimes) - (defernceBetweenHPs/onePercentOfHP);
    stroke (0);
    rect(position.x - 45, position.y + 95, HPStill, 10);
    fill (255);
    rect(position.x - 45, position.y + 95, 100, 10);
    if (HP <= 23) {
      //stroke (255, 0, 0);
      fill (255, 0, 0);
    } else {
      if (HP <= 33) {
        //stroke (255, 106, 0);
        fill (255, 106, 0);
      } else {
        if (HP <=50) {
          //stroke (255, 216, 0);
          fill (255, 216, 0);
        } else {
          if (HP <= 67) {
            //stroke (241, 245, 59);
            fill (241, 245, 59);
          } else {
            if (HP > 67) {
              //stroke (94, 255, 97);
              fill (94, 255, 97);
            }
          }
        }
      }
    }
    rect(position.x - 45, position.y + 95, HPStill, 10);
    noFill();
  }

  void move () {
    hitTimer = int((millis() - countSeconds1) / 1000);
    playerXY = new PVector (player.playerX, player.playerY);
    playerXY.sub (position);
    acceleration = playerXY;
    acceleration.setMag(50);
    velocity.add(acceleration);
    velocity.limit(difficulty.speed);
    distance = dist (player.playerX, player.playerY, position.x, position.y);
    if (distance < difficulty.hitRange && hitTimer >= difficulty.hitCooldown) {
      player.HP -= difficulty.damage;
      countSeconds1 = millis();
    } else {
      position.add(velocity);
    }
  }

  void slowDown () {
    if (background.moveUpBackground) {
      if (player.playerY <= height/2 + 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.y += difficulty.slowdown;
        }
      }
    }
    if (background.moveLeftBackground) {
      if (player.playerX <= width/2 + 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.x += difficulty.slowdown;
        }
      }
    }
    if (background.moveDownBackground) {
      if (player.playerY >= height/2 - 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.y -= difficulty.slowdown;
        }
      }
    }
    if (background.moveRightBackground) {
      if (player.playerX >= width/2 - 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.x -= difficulty.slowdown;
        }
      }
    }
  }
}


class EnemyArray {
  ArrayList<Enemy> enemyArray1;
  int interval, p, u;
  int time, countSeconds;
  boolean timeStarts;

  EnemyArray () {
    enemyArray1 = new ArrayList<Enemy>();
    interval = (int) random(1, 8);
    p = 0;
    timeStarts = false;
  }

  void display() {
    for (int i = enemyArray1.size() - 1; i >= 0; i--) {
      enemy = enemyArray1.get(i);
      enemy.move();
      enemy.display();
      enemy.slowDown();
    }
  }


  void newEnemy () {
    if (time == interval) {
      if (u < difficulty.numberOfEnemies) {
        enemyArray1.add (new Enemy());
        u++;
      }
    }
  }

  void timer () {
    if (time == difficulty.restartTime - 1) {
      if (p == 0) {
        interval = (int) random(1, difficulty.restartTime - 1);
        p = 1;
      }
    }
    if (timeStarts) {
      time = int((millis() - countSeconds) /1000);
    }
    if (time == difficulty.restartTime) {
      countSeconds = millis();
    }
    if (time == 0) {
      p = 0;
      u = 0;
    }
  }
}
