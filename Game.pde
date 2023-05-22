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
    
    playerShips.add(new Ship(0, 0, 2, false));  
  }
  
  
}
