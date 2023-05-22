class Board {
  int rows, cols, tileSize;
  int[][] grid; // 1 is a ship, 2 is a computer hit, 3 is player hit, 4 is player miss
  
  public Board(int r, int c, int size) {
    rows = r;
    cols = c;
    tileSize = size;
    grid = new int[r][c];
  }
  
  void draw() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int x = j * tileSize;
        int y = i * tileSize;
        if (grid[i][j] == 1)  fill(#A0A0A0); 
        else if (grid[i][j] == 2) fill(255); 
        else if (grid[i][j] == 3) fill(0, 255, 0); 
        else if (grid[i][j] == 4) fill(255, 0, 0); 
        else fill(0); 
        square(x, y, tileSize);
        }
      }
    }
  }


/*
to-do:
- populate grid

*/
