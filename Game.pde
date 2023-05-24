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
    for (Ship ship : playerShips) {
      placeShips(playerBoard, ship);
  }
  
  void placeShips(Board board, Ship ship) {
    if (ship.horizontal) {
      for (int i = ship.col; i < ship.col + ship.length; i++) {
        board.grid[ship.row][i] = 1;
      }
    } else {
      for (int i = ship.row; i < ship.row + ship.length; i++) {
        board.grid[i][ship.col] = 1;
      }
    }
  }
  
  
}
