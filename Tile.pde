class Tile {
  int status, row, col; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  final int SIZE = 30;
  boolean isHidden;

  public Tile(int stat, int r, int c) {
    status = stat;
    row = r;
    col = c;
    isHidden = false;
  }

  void display() {
    if (status == 1 && !isHidden)  fill(#A0A0A0);
    else if (status == 2) fill(#0CF50E);
    else if (status == 3) fill(#F54A0C);
    else if (status == 4 || isHidden) fill(#2A0CF5);
    square(row*SIZE, col*SIZE, SIZE);
  }
  
  void hide(int row, int col) {
    isHidden = true;
    fill(#2A0CF5);
    square(row*SIZE, col*SIZE, SIZE);
  }

  int getStatus() {
    return this.status;
  }

  void setStatus(int stat) {
    this.status = stat;
  }
}
