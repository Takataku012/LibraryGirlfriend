void setup() {
  size(480, 640);
  textAlign(CENTER, CENTER);
  value_init();
}

void draw() {
  background(200);
  fill(0);
  text("Gamemode: " + str(gamemode), 200, 200);

  // select gamemode
  switch(gamemode) {
  case 0:
    // home
    h.home();
    break;
  default:
    // title
    t.title();
    break;
  }
}