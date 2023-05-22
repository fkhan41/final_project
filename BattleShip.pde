Game game;

void setup() {
  size(900, 500);
  game = new Game();
}

void draw() {
  game.draw();
  game.computerTurn(); 
}

void mouseClicked() {
  game.mouseClicked();
}
