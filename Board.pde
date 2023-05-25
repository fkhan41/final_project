class Board {
  Tile[][] grid; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  
  public Board(int rows, int cols) {
    for (int i = 0; i < rows; i++) {
      int row = i;
      for (int j = 0; j <  cols; j++) {
        int col = j;
        grid[i][j] = new Tile(4, row++, col++); // all tiles start as water with size 30px
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


/*
to-do:
- populate grid

*/
