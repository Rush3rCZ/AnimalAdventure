class FireArray {
  ArrayList<Ball> f;
  FireArray() {
    f = new ArrayList<Ball>();
  }

  void display() {
    for (int i = f.size() - 1; i >= 0; i--) {
      b = f.get(i);
      b.update();
      b.display();
      if (b.isDead()) {
        f.remove(i);
      }
    }
  }

  void clicked () {
    f.add(new Ball());
  }
}
