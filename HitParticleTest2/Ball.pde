class Ball {
  PVector mouse, post, difference, velocity;
  boolean fire;
  int lifeTime;
  int d;
  Ball () {
    post = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    mouse = new PVector (mouseX, mouseY);
    difference = PVector.sub (mouse, post);
    lifeTime = 300;
    d = 30;
  }


  void update() {
    if (fire) {
      lifeTime--;
      velocity.add(difference);
      velocity.limit(10);
      post.add(velocity);
    }
  }

  void display() {
    circle (post.x, post.y, d);
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
