class BloodArray {
  ArrayList<Blood> bloodArray; 
  BloodArray () {
    bloodArray = new ArrayList<Blood>();
  }

  void display() {
    for (int i = bloodArray.size() - 1; i >= 0; i--) {
      bl = bloodArray.get(i);
      bl.speedDefinition();
      bl.update2();
      bl.display();   
      if (e.isHit(b)) {
        bl.updateBlood();
      }
    }
  }

  void addBloodArray () {
    bloodArray.add(new Blood());
  }
}
