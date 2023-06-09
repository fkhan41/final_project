Game battleShip;
PFont f;

void setup() {
  size(900, 540);
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
  battleShip.playerBoard.drawGrid("player");
  battleShip.computerBoard.drawGrid("computer");

  fill(0);
  strokeWeight(5);
  line(width/2, 0, width/2, height);
  rect(250, 10, 390, 65);
  textAlign(CENTER, BOTTOM);
  fill(255);
  textSize(60);
  text("Battleship", width/2, 80);


  fill(#DCFA00);
  textSize(15);

  text("A", 465, 90);
  text("B", 495, 90);
  text("C", 525, 90);
  text("D", 555, 90);
  text("E", 585, 90);
  text("F", 615, 90);
  text("G", 645, 90);
  text("H", 675, 90);
  text("I", 705, 90);
  text("J", 735, 90);
  text("K", 765, 90);
  text("L", 795, 90);
  text("M", 825, 90);
  text("N", 855, 90);
  text("O", 885, 90);


  text("0", 450, 110);
  text("1", 450, 140);
  text("2", 450, 170);
  text("3", 450, 200);
  text("4", 450, 230);
  text("5", 450, 260);
  text("6", 450, 290);
  text("7", 450, 320);
  text("8", 450, 350);
  text("9", 450, 380);
  text("10", 450, 410);
  text("11", 450, 440);
  text("12", 450, 470);
  text("13", 450, 500);
  text("14", 450, 530);
  strokeWeight(5);
  line(0, 90, width, 90);

  if (battleShip.gameOver) {
    background(0);
    fill(255, 0, 0);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
  }
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

    if (current.getStatus() == 1 || current.getStatus() == 5) {
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
          text("Hit!", mouseX, mouseY);
        text("Hit!", mouseX, mouseY);
        text("Hit!", mouseX, mouseY);
        text("Hit!", mouseX, mouseY);
        text("Hit!", mouseX, mouseY);
      }
    } else if (current.getStatus() == 4)
      current.setStatus(3); // Mark the cell as a miss
  }

  computerMove();
}

void computerMove() {
  boolean hit = false;
  int computerCol = (int) random(450) / 30;
  int computerRow = (int) (random(480)) / 30;
  println("row: " + computerRow + " col: " + computerCol);
  if (computerRow < 0) computerRow = 0;
  if (computerRow > 14) computerRow = 14;

  Tile currentComp = battleShip.playerBoard.grid[computerRow][computerCol];
  if (currentComp.getStatus() == 1 && (currentComp.getStatus() != 2 || currentComp.getStatus() != 3)) {
    currentComp.setStatus(2); // Mark the cell as hit
    hit = true;
  } else if (currentComp.getStatus() == 4 && (currentComp.getStatus() != 2 || currentComp.getStatus() != 3)) {
    currentComp.setStatus(3); // Mark the cell as miss
  }

  if (hit) secondMove();
}

void secondMove() {
  /*int computerCol = (int) random(450) / 30;
   int computerRow = (int) (random(420) + 90) / 30;
   Tile currentComp = battleShip.playerBoard.grid[computerCol][computerRow];
   if (currentComp.getStatus() == 1) {
   currentComp.setStatus(2);
   }
   else if (currentComp.getStatus() == 4) {
   currentComp.setStatus(3); // Mark the cell as miss
   }*/
  computerMove();
  computerMove();
  computerMove();
  computerMove();
}

void reset() {
  battleShip = new Game();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) battleShip.gameOver();
  }
}
