class Board {
  int rows, cols, tileSize;
  int[][] grid; // 1 is a ship, 2 is a hit, 3 is a miss, 4 is water
  
  public Board(int r, int c, int size) {
    rows = r;
    cols = c;
    tileSize = size;
    grid = new int[r][c];
    for (int i = 0; i < grid.length; i++ ) {
      for (int j = 0; j < grid[i].length; j++) grid[i][j] = 4;
    }
  }
  
  void drawGrid(String user) {
    if (user.equals("player")) {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int x = j * tileSize;
        int y = i * tileSize;
        if (grid[i][j] == 1)  fill(#A0A0A0); 
        else if (grid[i][j] == 2) fill(#0CF50E); 
        else if (grid[i][j] == 3) fill(#F54A0C); 
        else if (grid[i][j] == 4) fill(#2A0CF5);  
        square(x, y, tileSize);
        }
      }
    }
    if (user.equals("computer")) {
      for (int i = width/2; i < rows; i++) {
      for (int j = height/2; j < cols; j++) {
        int x = j * tileSize;
        int y = i * tileSize;
        if (grid[i][j] == 1)  fill(#A0A0A0); 
        else if (grid[i][j] == 2) fill(#0CF50E); 
        else if (grid[i][j] == 3) fill(#F54A0C); 
        else if (grid[i][j] == 4) fill(#2A0CF5);  
        square(x, y, tileSize);
        }
      }
    }
    }
    
    
}


/*
to-do:
- populate grid

*/
