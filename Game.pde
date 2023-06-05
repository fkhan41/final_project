class Game {
  ArrayList<Ship> playerShips;
  ArrayList<Ship> computerShips;
  boolean playerTurn;
  boolean gameOver;
  Board playerBoard, computerBoard;
  Ship decker = new Ship(2, 3, 7, false);
  Ship destroyer = new Ship(15, 9, 3, false);
  Ship tanker = new Ship(5, 1, 6, false);
  Ship submarine = new Ship(11, 3, 4, true);
  Ship aircraft = new Ship(6, 9, 5, true);
  
  public Game() {
    // boards, ships and turns
    playerBoard = new Board(15, 17, "player");
    computerBoard = new Board(10,3, "computer");
    
    playerShips = new ArrayList<Ship>();
    computerShips = new ArrayList<Ship>();
    
    playerTurn = true;
    gameOver = false;
    playerShips.add(decker);
    playerShips.add(destroyer);
    playerShips.add(submarine);
    playerShips.add(tanker);
    playerShips.add(aircraft);

    for (Ship ship : playerShips) {
      placeShip(playerBoard, ship);
  }
  }
  
 void placeShip(Board board, Ship ship) {
    if (ship.vertical) {
      for (int i = ship.row; i < ship.row + ship.len; i++) {
        board.grid[ship.col][i].setStatus(1);
      }
    }
    else {
      for (int i = ship.col; i < ship.col + ship.len; i++) {
        board.grid[i][ship.row].setStatus(1);
      }
    }
  }
  
  void mouseClicked() {
    if (gameOver) {
      return;
    }
    
    if (playerTurn) {
      int row = mouseY / 30;
      int col = mouseX / 30;
      if (playerBoard.grid[row][col].getStatus() == 1) {
         playerBoard.grid[row][col].setStatus(2); // Mark the cell as hit            
          }
        
        if (playerBoard.grid[row][col].getStatus() == 1) {
         playerBoard.grid[row][col].setStatus(3); // Mark the cell as a miss
        }
        playerTurn = false;
      }
    }
  
  
  
}
  
