class Board {
  int rows;
  int cols;
  int cellSize;
  int[][] grid; // 1 is a ship, 2 is a computer hit, 3 is player hit, 4 is player miss
  
  public Board(int rows, int cols, int cellSize) {
    this.rows = rows;
    this.cols = cols;
    this.cellSize = cellSize;
    this.grid = new int[rows][cols];
  }
  
  void draw() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        int x = j * cellSize;
        int y = i * cellSize;
        if (grid[i][j] == 1) {
          fill(0, 0, 255); 
        } else if (grid[i][j] == 2) {
          fill(255); 
        } else if (grid[i][j] == 3) {
          fill(0, 255, 0); 
        } else if (grid[i][j] == 4) {
          fill(255, 0, 0); 
        } else {
          fill(0); 
        }
        square(x, y, cellSize);
      }
    }
  }
}
