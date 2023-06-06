class Ship {
  int row, col, len;
  boolean vertical;

  public Ship(int r, int c, int l, boolean vert) {
    row = r;
    col = c;
    len = l;
    vertical = vert;
  }
  
  Ship invertShip() {
    Ship result = new Ship(this.row, this.col, this.len, !(this.vertical));
    return result;
  }
}
