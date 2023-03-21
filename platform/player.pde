class Player {
  PVector g, acc, vel, pos;

  Player() {
    g = new PVector(0, 0.1);
    acc =new PVector(0, 0);
    vel = new PVector(0, 0);
    pos = new PVector(250, 0);
    
  }


  void display() {
    square(pos.x, pos.y, 35);
    if (pos.y > 475) {
      pos.y = 475;
      vel.y = 0;
    }
    ground = false;
    for (Tile a : platform) {
    if(OnGround(a.x,a.y)){
      ground = true;
      
    }
  }
    acc.add(g);
    vel.add(acc);
    if(ground && vel.y>0) {
      vel.y = 0;
    }
    pos.add(vel);
    acc.set(0, 0);
  }

  void tastTryk() {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        pos.x+=5;
      } else if (keyCode == LEFT) {
        pos.x-=5;
      } else if (keyCode == UP  && ground==true) {
        vel.y = -3;
      }
    }
  }
  
  boolean OnGround(int a, int b){
    
    return a + 50 > pos.x && a < pos.x + 35 && b + 50 > pos.y && b < pos.y + 35;
    
    
  }
}
