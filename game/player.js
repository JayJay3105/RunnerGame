class Player {
  constructor() {
    this.x = width / 2;
    this.y = height - sH;
    this.r = 20;
  }

  display() {
    fill(20, 100, 255);
    noStroke();
    ellipse(this.x, this.y, this.r * 2);
  }

  updateKeys(k) {
    switch (k) {
      case 'D':
        this.x += 10;
        break;
      case 'A':
        this.x -= 10;
        break;
      default:
        break;
    }
    this.x = constrain(this.x, sW + this.r, width - sW - this.r);
  }

}