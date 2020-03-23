class info {
  int x;
  int y;
  info () {
    x = 20;
    y = 20;
  }

  void display() {
    text ("Blposition.X:  " + bl.position.x, x, y);
    text ("Blposition.Y:  " + bl.position.y, x, y + 20);
    text ("BLdirection.X:  " + bl.direction.x, x, y + 40);
    text ("BLdirection.Y:  " + bl.direction.y, x, y + 60);
    text ("BLspeed.X:  " + bl.speed.x, x, y + 80);
    text ("BLspeed.Y:  " + bl.speed.y, x, y + 100);
    text ("enemyHited:  " + bl.enemyHited, x, y + 120);
    text ("activateParticle:  " + bl.activateParticle, x, y + 140);
    text ("Number of BloodParticles:  " + ba.bloodArray.size(), x, y + 160);
  }
}
