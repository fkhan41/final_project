Game battleShip;

void setup() {
  size(900, 500);
  battleShip = new Game(15,30);
}

void draw() {
 battleShip.playerBoard.draw();
}

void mouseClicked() {

}
