Game battleShip;

void setup() {
  size(900, 500);
  battleShip = new Game();
}

void draw() {
  battleShip.draw();
  battleShip.computerTurn(); 
}

void mouseClicked() {
  battleShip.mouseClicked();
}
