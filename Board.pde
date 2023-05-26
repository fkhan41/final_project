class Board {
  Tile[][] grid; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  
  // square board
  public Board(int size) {
    grid = new Tile[size][size];
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        grid[i][j] = new Tile(4, i, j);   // all tiles start as water with size 30px
      }
    }
  }
  
  void drawGrid() {
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        grid[i][j].display();
        }
      }
    }
}
