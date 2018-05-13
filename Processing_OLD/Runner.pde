Player p;
World w;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

float nW;
float nH;
final boolean DEBUG = false;

void setup() {
  size(800, 500);
  nW = width * 0.1;
  nH = height * 0.1;
  p = new Player();
  w = new World();
  for (int i = 0; i < 3; i++) {
        float x = random(nW, width - nW);
      float w = random(30, 100);
      float h = random(30, 100);
      Obstacle o = new Obstacle(x, w, h);
      while (o.interactsWithOther()) {
        x = random(nW, width - nW);
        w = random(30, 100);
        h = random(30, 100);
        o = new Obstacle(x, w, h);
      }
      obstacles.add(o);
    //for (Obstacle other : obstacles) {
    //  Obstacle o = null;
    //  while (!other.hits(o)) {
    //  float x = random(nW, width - nW);
    //  float w = random(30, 100);
    //  float h = random(30, 100);
    //  o = new Obstacle(x, w, h);
    //  obstacles.add(o);
    //  }
    //}
  }
}

void keyPressed() {
  if (DEBUG) println(key + " | " + keyCode);
  p.updateKeys(key);
}

void draw() {
  background(0);
  p.display();
  w.display();
  for (Obstacle o : obstacles) {
    o.display();  
    o.update();
  }
}