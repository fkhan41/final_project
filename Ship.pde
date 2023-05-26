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
  
  boolean checkHit(int row, int col) {
    if (horizontal) {
      if (row != this.row || col < this.col || col >= this.col + len)  return false;
      hits[col - this.col] = true;
    } 
    else {
      if (col != this.col || row < this.row || row >= this.row + len) return false;
      hits[row - this.row] = true;
    }
    return true;
  }
}
  
  
