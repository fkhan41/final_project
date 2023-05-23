Game battleShip;
Ship decker;
Ship destroyer;
Ship tanker;
Ship cargo;
Ship aircraft;


void setup() {
  size(900, 450);
  battleShip = new Game(15,30);
}

void draw() {
 battleShip.playerBoard.drawGrid("player");
 battleShip.computerBoard.drawGrid("computer");

}

void mouseClicked() {

}
