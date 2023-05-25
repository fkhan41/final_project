class Tile {
  int status, row, col;
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
    else if (status == 4) fill(#2A0CF5);  
    square(row, col, SIZE);
  }

}
