class Board {
  Tile[][] grid; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  
  public Board(int sizeX, int sizeY) {
    grid = new Tile[sizeX][sizeY];
    for (int i = 0; i < sizeX; i++) {
      for (int j = 0; j < sizeY; j++) {
        grid[i][j] = new Tile(4, i, j);   // all tiles start as water with size 30px
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
