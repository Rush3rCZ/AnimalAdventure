class Ball {
  PVector mouse, post, difference, velocity;
  boolean fire;
  int lifeTime;
  Ball () {
    post = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    mouse = new PVector (mouseX, mouseY);
    difference = PVector.sub (mouse, post);
    lifeTime = 300;
  }


  void update() {
    if (fire) {
      lifeTime--;
      difference.mult(1);
      velocity.add(difference);
      velocity.limit(15);
      post.add(velocity);
    }
  }

  void display() {
    fill(0);
    circle (post.x, post.y, 30);
    noFill();
    if (mousePressed == true) {
      clicked();
    }
  }

  void clicked () {
    fire = true;
  }


  boolean isDead() {
    if (lifeTime < 0) {
      return true;
    } else {
      return false;
    }
  }
}
