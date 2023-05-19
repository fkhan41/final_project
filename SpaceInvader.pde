Alien[][] enemies;

void setup() {
	size(1200,700);
  background(#000000);
}

void draw() {
  
}

void drawAliens() {
  for (Alien[] alien : enemies) {
    for (Alien enemy: alien) {
      shape(enemy.alien);
    }
  }
}
