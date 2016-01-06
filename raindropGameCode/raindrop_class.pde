class Raindrop {
  PVector loc, vel, acc;
  int diam;

  Raindrop(float x, float y) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(0, .3);
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
    vel.set(0, 15);
  }

  boolean isInContactWith(Catcher q) {
    boolean a;
    if (loc.dist(q.loc) < diam/2 + q.diam/2){
      a = true;
    } else {
      a = false;
    }
    return a;
  }
}