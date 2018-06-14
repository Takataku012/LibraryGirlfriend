class Home {
  int mode;

  int favratio = 0;

  String button_text[] = {"ホーム", "読む本リスト", "読んだ本リスト", "栞の部屋", "設定"};
  float button_w = 93.6;
  float button_h = 77.0;

  Home(int mode) {
    this.mode = mode;
  }

  void home() {

    switch(mode) {
    case 1:
      // mode1
      break;
    case 2:
      // mode2
      break;
    case 3:
      // mode3
      break;
    case 4:
      // mode4
      break;
    default:
      // home
      break;
    }

    bg();
    girl();
    header();
    button();

    fill(255);
    textSize(24);
    text("mode: " + str(mode), 100, 250);
  }

  void bg() {
    image(background1, width/2, height/2, width, height);
  }

  void girl() {
    image(siori1, 370, 320, siori1.width/8.4, siori1.height/8.4);
  }

  void header() {
    fill(150, 30, 85);
    rect(width/2, 17.5, width, 35);

    fill(255);
    textSize(20);
    text(year()+" / "+month()+" / "+day(), 65, 17.5);
    text("好感度 :  " + nf(favratio, 3), 410, 17.5);
  }

  void button() {

    for (int i = 0; i < 5; i++) {
      fill(255, 180);
      noStroke();
      rect((button_w/2.0)+((button_w+3)*i), 601, button_w, button_h, 7);

      fill(0);
      textSize(12);
      text(button_text[i], (button_w/2.0)+((button_w+3)*i), 625);

      if (mouseX > (button_w+3)*i && mouseX < (button_w+3)*i+button_w && mouseY > 563 && mouseY < height) {
        if (mousePressed == true) {
          mode = i;
        }
      }
    }
  }
}
