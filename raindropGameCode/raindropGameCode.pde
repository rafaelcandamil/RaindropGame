
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test
int count = 45;
PVector mouse;
Catcher q;
Raindrop [] r = new Raindrop [count];

void setup() {
  size(1100, 700);
  mouse = new PVector();   //initialize mouse PVector[i]. value is irrelevant since it will be set at the start of void draw(){}
 q = new Catcher(70);
  for (int i = 0; i < count; i++)
    r[i] = new Raindrop(random(width), 0);   //Initialize r[i]. The parameters used are the initial x and y positions
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(10, 210, 225);
  q.update();
  q.display();
  for (int i = 0; i < count; i++) {
    r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r[i].display();      //display the raindrop
    if (r[i].isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r[i].reset();                         //if it is, reset the raindrop
    }
    if (r[i].loc.y > height + r[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r[i].reset();                           //if it does, reset the raindrop
    }
  }
}