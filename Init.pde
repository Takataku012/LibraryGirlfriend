// game mode val
int gamemode;

// girlfriend
PImage siori1;
String siori1_url = "http://drive.google.com/uc?export=view&id=1crSILWzLv4uBYYHw__gDJe8dlNsywKzE";

// background
PImage background1;
String bg1_url = "http://drive.google.com/uc?export=view&id=1wfVstZL9WT7gDrNDkNKm9MAm7pEuB6c9";

// text font
PFont Makinas;

Title t;
Home h;

void value_init() {
  gamemode = -1;
  t = new Title();
  h = new Home(0);
}

void image_init() {
  siori1 = loadImage(siori1_url, "png");
  background1 = loadImage(bg1_url, "png");
}

void textfont_init() {
  Makinas = loadFont("Makinas-Scrap-5-48.vlw");
}