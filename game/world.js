class World {
  display() {
    background(0);
    stroke(255);
    line(sW, 0, sW, height);
    line(width - sW, 0, width - sW, height);
  }
}