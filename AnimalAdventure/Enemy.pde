class Enemy {
  int HP, speed, damage, slowdown, time, countSeconds, interval;
  float distance;
  PVector position, playerXY, acceleration, velocity;
  PImage enemy;
  boolean timeStarts;

  Enemy () {
    playerXY = new PVector (player.playerX, player.playerY);
    position = new PVector (random (0, 3500), random (0, 3500));
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    enemy = loadImage ("zombieTest.png");
    slowdown = 6;
    countSeconds = millis();
    timeStarts = false;
  }

  void display () {
    imageMode (CENTER);
    image (enemy, position.x, position.y);
    imageMode (CORNER);
  }

  void timer () {
    if (timeStarts) {
      if (millis() - countSeconds > interval) {
        time = int(millis()/1000);
        fill (0);
        text ("Time:  " + time + "s", mouseX, mouseY);
        fill (255);
      }
    }
  }

  void move () {
    playerXY = new PVector (player.playerX, player.playerY);
    playerXY.sub (position);
    acceleration = playerXY;
    acceleration.setMag(50);
    velocity.add(acceleration);
    velocity.limit(5);
    distance = dist (player.playerX, player.playerY, position.x, position.y);
    if (distance < 95) {
    } else {
      position.add(velocity);
    }
  }
}
