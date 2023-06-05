Game battleShip;


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
  
  battleShip = new Game();
  battleShip.playerBoard.drawGrid();
  battleShip.computerBoard.drawGrid();
  strokeWeight(5);
  line(0,90,width,90);
  line(width/2,0,width/2,height);
  textAlign(CENTER, BOTTOM);
  fill(255);
  text("Battleship", width/2, 80);
  strokeWeight(1);
}

void draw() {
  if (battleShip.gameOver) {
      fill(0);
      textSize(24);
      textAlign(CENTER, CENTER);
      text("Game Over", width / 2, height / 2);
    }
}

void mouseClicked() {
  battleShip.mouseClicked();
}
