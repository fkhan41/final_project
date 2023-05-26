Game battleShip;
Ship decker = new Ship(0, 0, 2, true);
Ship destroyer = new Ship(2, 0, 3, true);
Ship tanker = new Ship(4, 0, 3, false);
Ship submarine = new Ship(6, 0, 4, true);
Ship aircraft = new Ship(8, 0, 5, false);


void setup() {
  size(900,600);
  background(0,0,255);
  noFill();
  //frame
  stroke(300);
  rect(20, 40, 860, 535);
  textSize(44);
  textAlign(CENTER, BOTTOM);
  line(0, 120, width, 120);
  text("Battleship", 450, 120);
  battleShip = new Game();
  battleShip.playerBoard.drawGrid();
  battleShip.computerBoard.drawGrid();
}

void draw() {
  // add players ships
 battleShip.placeShips(battleShip.playerBoard, decker);
 battleShip.placeShips(battleShip.playerBoard, destroyer);
 battleShip.placeShips(battleShip.playerBoard, tanker);
 battleShip.placeShips(battleShip.playerBoard, submarine);
 battleShip.placeShips(battleShip.playerBoard, aircraft);
 // add computer's ships
 battleShip.placeShips(battleShip.computerBoard, decker);
 battleShip.placeShips(battleShip.computerBoard, destroyer);
 battleShip.placeShips(battleShip.computerBoard, tanker);
 battleShip.placeShips(battleShip.computerBoard, submarine);
 battleShip.placeShips(battleShip.computerBoard, aircraft);
}

void mouseClicked() {
 // battleShip.mouseClicked();
}
