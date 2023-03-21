Player p;
boolean ground = false;

void setup() {
  size(1000, 500);
  p = new Player();
  load();
  platform.add(new Tile(250, 400));
}

void draw() {
  clear();
  background(135, 206, 235);

  p.display();

  fill(255);



  for (Tile a : platform) {
    a.draw();
  }
}

void keyPressed() {
  p.tastTryk();
}
