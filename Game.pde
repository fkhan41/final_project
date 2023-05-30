class Game {
  ArrayList<Ship> playerShips;
  ArrayList<Ship> computerShips;
  boolean playerTurn;
  boolean gameOver;
  Board playerBoard, computerBoard;
  
  public Game() {
    // boards, ships and turns
    playerBoard = new Board(15, 3);
    computerBoard = new Board(11,3);
    
    playerShips = new ArrayList<Ship>();
    computerShips = new ArrayList<Ship>();
    
    playerTurn = true;
    gameOver = false;
    for (Ship ship : playerShips) {
      placeShips(playerBoard, ship);
  }
  }
  
  void placeShips(Board board, Ship ship) {
    if (ship.horizontal) {
      for (int i = ship.col; i < ship.col + ship.len; i++) {
        board.grid[ship.row][i].status = 1;
      }
    }
    else {
      for (int i = ship.row; i < ship.row + ship.len; i++) {
        board.grid[i][ship.col].status = 1;
      }
    }
  }
  
  
}
