class Board {
  Tile[][] grid; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  
  public Board(int sizeX, int sizeY, String user) {
    grid = new Tile[sizeX][sizeY];
    if (user.equals("player")) {
    for (int i = 0; i < sizeX; i++) {
      for (int j = 3; j < sizeY+3; j++) {
        grid[i][j-3] = new Tile(4, i, j);   // all tiles start as water with size 30px
      }
    }
    }
    
    if (user.equals("computer")) {
      for (int i = 15; i < sizeX+15; i++) {
      for (int j = 3; j < sizeY+3; j++) {
        grid[i-15][j-3] = new Tile(4, i, j);   
      }
    }
    }
  }
  
  void drawGrid() {
    for (Tile[] row: grid) {
      for (Tile tile : row) {
        tile.display();
        }
      }
    }
}
