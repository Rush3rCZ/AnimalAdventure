class Enemy {
  int HP, speed, damage, slowdown, time, countSeconds, hitCooldown, countSeconds1;
  float distance;
  PVector position, playerXY, acceleration, velocity;
  PImage enemy;
  boolean timeStarts;

  Enemy () {
    playerXY = new PVector (player.playerX, player.playerY);
    position = new PVector (random (0, 3500), random (0, 3500));
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    enemy = loadImage ("enemy.png");
    slowdown = 6;
    timeStarts = false;
  }

  void display () {
    imageMode (CENTER);
    image (enemy, position.x, position.y);
    imageMode (CORNER);
  }

  void move () {
    hitCooldown = int((millis() - countSeconds1) / 1000);
    playerXY = new PVector (player.playerX, player.playerY);
    playerXY.sub (position);
    acceleration = playerXY;
    acceleration.setMag(50);
    velocity.add(acceleration);
    velocity.limit(5);
    distance = dist (player.playerX, player.playerY, position.x, position.y);
    if (distance < 105 && hitCooldown >= 2) {
      player.HP -= 10;
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
          position.y += slowdown;
        }
      }
    }
    if (background.moveLeftBackground) {
      if (player.playerX <= width/2 + 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.x += slowdown;
        }
      }
    }
    if (background.moveDownBackground) {
      if (player.playerY >= height/2 - 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.y -= slowdown;
        }
      }
    }
    if (background.moveRightBackground) {
      if (player.playerX >= width/2 - 6) {
        if (hue(get( player.nextX, player.nextY)) <= 127 && hue(get( player.nextX, player.nextY)) >= 123 && saturation(get( player.nextX, player.nextY)) >= 180 && saturation(get( player.nextX, player.nextY)) <= 230 && brightness(get( player.nextX, player.nextY)) >= 185  && brightness(get( player.nextX, player.nextY)) <= 220) {
        } else {
          position.x -= slowdown;
        }
      }
    }
  }
}


class EnemyArray {
  ArrayList<Enemy> enemyArray1;
  int interval, p, u;

  EnemyArray () {
    enemyArray1 = new ArrayList<Enemy>();
    interval = (int) random(1, 8);
    p = 0;
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
    if (enemy.time == interval) {
      if (u < 3) {
        enemyArray1.add (new Enemy());
        u++;
      }
    }
  }

  void timer () {
    if (enemy.time == 9) {
      if (p == 0) {
        interval = (int) random(1, 8);
        p = 1;
      }
    }
    if (enemy.timeStarts) {
      enemy.time = int((millis() - enemy.countSeconds) /1000);
    }
    if (enemy.time > 9) {
      enemy.countSeconds = millis();
    }
    if (enemy.time == 0) {
      p = 0;
      u = 0;
    }
  }
}
