class Shot {
  PVector mouse, post, difference, velocity;
  int lifeTime, hitTimer, countSeconds;
  PImage shot;
  Shot () {
    post = new PVector (player.playerX, player.playerY);
    velocity = new PVector(0, 0);
    mouse = new PVector (mouseX, mouseY);
    difference = PVector.sub (mouse, post);
    lifeTime = 200;
    shot = loadImage ("shot.png");
  }

  void display() {
    imageMode (CENTER);
    image (shot, post.x, post.y);
    imageMode(CORNER);
  }

  void update() {
    //difference.mult(5);
    velocity.add(difference);
    velocity.limit(15);
    post.add(velocity);
    lifeTime--;
  }

  boolean damageStop () {
    hitTimer = int((millis() - countSeconds) / 1000);
    if (hitTimer > 1) {
      return true;
    } else {
      return false;
    }
  }

  boolean isDead() {
    if (lifeTime < 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean enemyIsShoted (Enemy enemy) {
    if (post.x < enemy.position.x + 50 && post.x > enemy.position.x - 50 && post.y < enemy.position.y + 95 &&  post.y > enemy.position.y - 95) { 
      return true;
    } else {
      return false;
    }
  }
}


class ShootingArray {
  ArrayList<Shot> SA;
  ShootingArray () {
    SA = new ArrayList <Shot>();
  }

  void display () {
    for (int i = SA.size() - 1; i >= 0; i--) {
      Shot shot = SA.get(i);
      shot.update();
      shot.display();
      if (shot.isDead()) {
        SA.remove(i);
      }
      for (int j = enemyArray.enemyArray1.size() - 1; j >= 0; j--) {
        enemy = enemyArray.enemyArray1.get(j);
        if (shot.enemyIsShoted(enemy) && shot.damageStop()) {
          enemy.HP -= player.damage;
          shot.countSeconds = millis();
          shot.lifeTime  = 0;
          if (enemy.HP < 0) {
            enemyArray.enemyArray1.remove(j);
          }
        }
      }
    }
  }

  void newShot () {
    if (gameHasStarted) {
      SA.add(new Shot());
    }
  }
}
