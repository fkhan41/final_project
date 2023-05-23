class Game {
  ArrayList<Ship> playerShips;
  ArrayList<Ship> computerShips;
  boolean playerTurn;
  boolean gameOver;
  Board playerBoard, computerBoard;
  
  public Game(int boardSize, int tileSize) {
    playerBoard = new Board(boardSize, boardSize, tileSize);
    computerBoard = new Board(boardSize, boardSize, tileSize);
    playerShips = new ArrayList<Ship>();
    computerShips = new ArrayList<Ship>();
    playerTurn = true;
    gameOver = false;
  }
  
  // Add the ships, 5 at a time
  void addPlayerShips(Ship s1, Ship s2, Ship s3, Ship s4, Ship s5, String user) {
    if (user.equals("player")) {
    playerShips.add(s1);
    playerBoard.grid[s1.row][s1.col] = 1;
    playerShips.add(s2);
    playerBoard.grid[s2.row][s2.col] = 1;
    playerShips.add(s3);
    playerBoard.grid[s3.row][s3.col] = 1;
    playerShips.add(s4);
    playerBoard.grid[s4.row][s4.col] = 1;
    playerShips.add(s5);
    playerBoard.grid[s5.row][s5.col] = 1;
    }
    if (user.equals("computer")) {
    computerShips.add(s1);
    computerBoard.grid[s1.row][s1.col] = 1;
    computerShips.add(s2);
    computerBoard.grid[s2.row][s2.col] = 1;
    computerShips.add(s3);
    computerBoard.grid[s3.row][s3.col] = 1;
    computerShips.add(s4);
    computerBoard.grid[s4.row][s4.col] = 1;
    computerShips.add(s5);
    computerBoard.grid[s5.row][s5.col] = 1;
    }
  }
  
  
}
