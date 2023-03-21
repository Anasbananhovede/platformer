String[] tilesCreate;
class Tile {
  int x;
  int y;
  int c1, c2, c3;

  Tile(int a, int b) {

    x = a;
    y = b;
  }
  void draw() {
    square(x, y, 50);
  }
}

ArrayList<Tile> platform = new ArrayList<Tile>();



void load() {
  tilesCreate = loadStrings("tiles.txt");

  int tmp = -1;
  for (String tilesCreate : tilesCreate) {
    tmp++;
    for (int i=0; i < tilesCreate.length(); i++) {
      char c= tilesCreate.charAt(i);
      if ( c =='1') {
        println(i, tmp);
        platform.add(new Tile(50*i, 50*tmp));
      }
    }
  }
}
