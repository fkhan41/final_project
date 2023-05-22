class Game {
  ArrayList<Ship> playerShips;
  ArrayList<Ship> computerShips;
  boolean playerTurn;
  boolean gameOver;
  Board playerBoard, computerBoard;
  
  public Game() {
    int boardSize = 10;
    int cellSize = 40;
    playerBoard = new Board(boardSize, boardSize, cellSize);
    computerBoard = new Board(boardSize, boardSize, cellSize);
    playerShips = new ArrayList<Ship>();
    computerShips = new ArrayList<Ship>();
    playerTurn = true;
    gameOver = false;
    
    playerShips.add(new Ship(0, 0, 2, false));  
    playerShips.add(new Ship(1, 0, 3, true));  
    playerShips.add(new Ship(2, 0, 3, false));  
    playerShips.add(new Ship(3, 0, 4, true)); 
    playerShips.add(new Ship(4, 0, 5, false)); 
    
  
}
