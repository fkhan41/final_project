class Ship {
  int row, col, len;
  boolean horizontal;
  boolean[] hits;
  
  public Ship(int r, int c, int l, boolean horz) {
    row = r;
    col = c;
    len = l;
    horizontal = horz;
    hits = new boolean[l];
  }
  
  boolean isHit() {
    for (boolean ship : hits) {
      if (!ship) return false;
    }
    return true;
  }
}
  
  
/*
to-do:
- position ships
- add draw

*/
