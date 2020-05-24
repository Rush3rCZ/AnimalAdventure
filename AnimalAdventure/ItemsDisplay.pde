class itemDisplay {
  Grass grass;
  Rock rock;
  itemDisplay () {
    grass = new Grass();
    rock  = new Rock ();
  }
  void display () {
    grass.displayInInventory();
    rock.displayInInventory();
  }
}
