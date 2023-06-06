Game battleShip;
PFont f;

void setup() {
  size(900, 600);
  PImage bg = loadImage("battleship.jpg");
  background(bg);

  //frame
  f = loadFont("font.vlw");
  textFont(f);
  textSize(60);
battleShip = new Game();
  
}

void draw() {
  strokeWeight(1);
  battleShip.playerBoard.drawGrid();
  battleShip.computerBoard.drawGrid();

  fill(0);
      strokeWeight(5);
      line(width/2, 0, width/2, height);
  rect(250, 10, 400, 70);
  textAlign(CENTER, BOTTOM);
  fill(255);
  text("Battleship", width/2, 80);

    if (battleShip.gameOver) {
    fill(0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
  }
     strokeWeight(5);
  line(0, 90, width, 90);  



}

void mouseClicked() {
  if (battleShip.gameOver) {
    return;
  }
  
  // Check if the player clicked on the computer board
  if (mouseX >= 450 && mouseY >= 90) {
    int col = (mouseY - 90) / 30;
    int row = (mouseX - 450) / 30;
    
    Tile current = battleShip.computerBoard.grid[row][col];
    
    if (current.getStatus() == 1) {
      current.setStatus(2); // Mark the cell as hit
      
      // Check if the ship is sunk
      boolean shipSunk = true;
      for (Ship ship : battleShip.computerShips) {
        if (ship.vertical) {
          for (int i = ship.row; i < ship.row + ship.len; i++) {
            if (battleShip.computerBoard.grid[ship.col][i].getStatus() != 2) {
              shipSunk = false;
              break;
            }
          }
        } else {
          for (int i = ship.col; i < ship.col + ship.len; i++) {
            if (battleShip.computerBoard.grid[i][ship.row].getStatus() != 2) {
              shipSunk = false;
              break;
            }
          }
        }
        if (shipSunk) 
          text("You sunk the ship!", mouseX, mouseY);
        
                  
      } 
    } 
    else if (current.getStatus() == 4) 
      current.setStatus(3); // Mark the cell as a miss
    
  }
  
   int computerRow = (int) random(451) / 30; 
      int computerCol = (int) random(451) / 30; 

}



/*
to do:
- make ships randomly
- mouseclicked
- make computer moves
- hide computer ships, reveal when ship is sunk
- reset
*/
