void setup() {
  size(480, 640); // screen size

  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  value_init();
  image_init();
  textfont_init();

  textFont(Makinas);
}

void draw() {
  textSize(24);
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

  fill(255);
  text("Gamemode: " + str(gamemode), 100, 200);
}
