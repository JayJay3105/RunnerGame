let player;
let world;
let obstacles = [];
let sH; // Scaled height
let sW; // Scaled width

function setup() {
  createCanvas(800, 800);
  sH = height * 0.1;
  sW = width * 0.1;
  player = new Player();
  world = new World();
  for (let i = 0; i < 3; i++) {
    let x = random(sW, width - sW);
    let w = random(30, 100);
    let h = random(30, 100);
    obstacles.push(new Obstacle(x, w, h));
  }
}

function keyPressed() {
  console.log(key);
  //  player.updateKeys(key);
}

function draw() {
  world.display();
  player.display();
  for (let i = 0; i < obstacles.length; i++) {
    obstacles[i].display();
    obstacles[i].update();
  }
  if (keyIsPressed) player.updateKeys(key);
  // for (o in obstacles) {
  //   o.display();
  //   o.update();
  // }
}