class Obstacle {
  constructor(x, w, h) {
    this.x = x;
    this.y = 0;
    this.w = w;
    this.h = h;
  }

  display() {
    noFill();
    stroke(255);
    rect(this.x, this.y, this.w, this.h);
  }

  update() {
    this.y++;
  }

  offscreen() {
    return this.y > height;
  }

  hits(other) {
    return other.x > this.x && other.x < (this.x + this.w) &&
      other.y > this.y && other.y < (this.y + this.h);
  }

  interactsWithOther() {
    let intersects = false;
    for (ob in obstacles) {
      if (ob == this) {
        console.log("ob == this");
        continue;
      }
      if (ob.hits(this)) {
        intersects = true;
        break;
      }
    }
    return intersects;
  }

}