class Player {
  
  float x,y;
  float r = 20;
  
  Player() {
    x = width/2;
    y = height - nH;
  }
  
  void display() {
    fill(20, 100, 255);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }
  
  void updateKeys(char k) {
    switch (k) {
      case 'd':
        x+=10;
        break;
      case 'a':
        x-=10;
      default:
        break;
    }
    x = constrain(x, nW + r, width - nW - r);
  }
  
}