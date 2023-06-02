Game battleShip;
Ship decker = new Ship(0, 0, 2, true);
//Ship destroyer = new Ship(2, 0, 3, true);
//Ship tanker = new Ship(4, 0, 3, false);
//Ship submarine = new Ship(6, 5, 4, false);
//Ship aircraft = new Ship(8, 9, 5, false);

void setup() {
  size(900,600);
  PImage bg = loadImage("battleship.jpg");
  background(bg);
  //frame
  fill(0);
  rect(250, 10, 400, 70);
  PFont f = loadFont("font.vlw");
  textFont(f);
  textSize(60);
  strokeWeight(2);
  line(0,90,width,90);
  line(width/2,90,width/2,height);
  textAlign(CENTER, BOTTOM);
  fill(255);
  text("Battleship", width/2, 80);
  strokeWeight(1);

  battleShip = new Game();
  battleShip.playerBoard.drawGrid();
  battleShip.computerBoard.drawGrid();
}

void draw() {
  // add players ships
 battleShip.placeShip(battleShip.playerBoard, decker);
 //battleShip.placeShip(battleShip.playerBoard, destroyer);
 //battleShip.placeShip(battleShip.playerBoard, tanker);
 //battleShip.placeShip(battleShip.playerBoard, submarine);
 //battleShip.placeShip(battleShip.playerBoard, aircraft);
 // add computer's ships
/* battleShip.placeShip(battleShip.computerBoard, decker);
 battleShip.placeShip(battleShip.computerBoard, destroyer);
 battleShip.placeShip(battleShip.computerBoard, tanker);
 battleShip.placeShip(battleShip.computerBoard, submarine);
 battleShip.placeShip(battleShip.computerBoard, aircraft); */
}

void mouseClicked() {
  
}
