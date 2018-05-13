class Obstacle {
  
  float x, y = 0, w, h;
  
  Obstacle(float x, float w, float h) {
    this.x = x;
    this.w = w;
    while (x + w > width - nW) {
      w--;
    }
    this.h = h;
  }
  
  void display() {
    noFill();
    stroke(255);
    rect(x, y, w, h);
  }
  
  void update() {
    y++;
  }
  
  boolean hits(Obstacle other) {
    return other.x > x && other.x < (x+w) && other.y > y && other.y < (y + h);
  }
  
  boolean interactsWithOther() {
    boolean intersects = false;
    for (Obstacle o: obstacles) {
      if (o == this) {
        println("o == this");
        continue;  
      }
      if (o.hits(this)) {
        intersects = true;
        break;
      }
    }
    return intersects;
  }
  
}