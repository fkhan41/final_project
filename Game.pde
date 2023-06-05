class Game {
  ArrayList<Ship> playerShips;
  ArrayList<Ship> computerShips;
  boolean playerTurn;
  boolean gameOver;
  Board playerBoard, computerBoard;
  Ship Pdecker = new Ship(2, 3, 7, false);
  Ship Pdestroyer = new Ship(15, 9, 3, false);
  Ship Ptanker = new Ship(5, 1, 6, false);
  Ship Psubmarine = new Ship(11, 3, 4, true);
  Ship Paircraft = new Ship(6, 9, 5, true);
  
  void createComputerShips(ArrayList<Ship> ships) {
    for (Ship ship : ships) {
  Ship Cdecker = new Ship(2, 3, 7, true);`
  Ship Cdestroyer = new Ship(15, 9, 3, false);
  Ship Ctanker = new Ship(5, 1, 6, true);
  Ship Csubmarine = new Ship(11, 3, 4, false);
  Ship Caircraft = new Ship(6, 9, 5, false);
    }
  }
  
  public Game() {
    // boards, ships and turns
    playerBoard = new Board(15, 17, "player");
    computerBoard = new Board(15,17, "computer");
    
    playerShips = new ArrayList<Ship>();
    computerShips = new ArrayList<Ship>();
    
    playerTurn = true;
    gameOver = false;
    playerShips.add(Pdecker);
    playerShips.add(Pdestroyer);
    playerShips.add(Psubmarine);
    playerShips.add(Ptanker);
    playerShips.add(Paircraft);
    
    computerShips.add(Cdecker);
    computerShips.add(Cdestroyer);
    computerShips.add(Ctanker);
    computerShips.add(Csubmarine);
    computerShips.add(Caircraft);

    for (Ship ship : playerShips) {
      placeShip(playerBoard, ship);
  }
  
  for (Ship ship : computerShips) {
      placeShip(computerBoard, ship);
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
  
