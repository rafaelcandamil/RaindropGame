class Raindrop {
  PVector loc, vel, acc;
  int diam;
  Raindrop(float x, float y) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(random(-1, 3), random(-1, 3));
    acc = new PVector(.02, .015);
  }
  void display() {
    fill (230);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.y = loc.y + vel.y;
    vel.add(acc);
  }
  void reset() {
    loc.y=0;
    vel.set(0, 6);
  }
  boolean isInContactWith(Catcher q) {
       boolean a;
    if (loc.dist(q.loc) < diam/2 + q.diam/2)  {
      a = true;
    } else {
      a = false;
    }
    return a;
  }
}