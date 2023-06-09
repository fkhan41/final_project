class Tile {
  int status, row, col; // 1 is a friendly ship, 2 is a hit, 3 is a miss, 4 is water, 5 is enemy ship
  final int SIZE = 30;

  public Tile(int stat, int r, int c) {
    status = stat;
    row = r;
    col = c;
  }

  void display() {
    if (status == 1)  fill(#A0A0A0);
    else if (status == 2) fill(#0CF50E);
    else if (status == 3) fill(#F54A0C);
    else if (status == 4 || status == 5) fill(#2A0CF5);
    square(row*SIZE, col*SIZE, SIZE);
  }

  int getStatus() {
    return this.status;
  }

  void setStatus(int stat) {
    this.status = stat;
  }
}
