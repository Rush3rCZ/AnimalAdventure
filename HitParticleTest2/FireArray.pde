class FireArray {
  ArrayList<Ball> f;
  boolean another;
  FireArray() {
    f = new ArrayList<Ball>();
  }

  void display() {
    for (int i = f.size() - 1; i >= 0; i--) {
      b = f.get(i);
      b.update();
      b.display();
      if (e.isHit(b)) {
        bl.updateBlood();
        //e.x =(int) random(0 + e.d/2, width - e.d/2);
        //e.y =(int) random (0 + e.d/2, height - e.d/2);
      }
    }
    if (b.isDead()) {
      f.remove(i);
    }
  }



  void clicked () {
    f.add(new Ball());
  }
}
