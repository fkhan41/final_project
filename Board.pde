class Board {
  int rows;
  int cols;
  int cellSize;
  int[][] grid;
  
  Board(int rows, int cols, int cellSize) {
    this.rows = rows;
    this.cols = cols;
    this.cellSize = cellSize;
    this.grid = new int[rows][cols];
  }
 }
