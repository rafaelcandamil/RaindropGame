class Catcher {
  PVector loc;
  int diam;

  Catcher(int tdiam) {
    loc = new PVector();
    diam = tdiam;
  }

  void display() {
    fill (255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update () {
    loc.set(mouseX, mouseY);
  }
}