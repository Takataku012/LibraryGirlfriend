class Home {
  int mode;
  Home(int mode) {
    this.mode = mode;
  }

  void home() {

    text("mode: " + str(mode), 200, 250);

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
    default:
      // main
      break;
    }
    buttom();
  }

  void buttom() {

    for (int i = 0; i < 4; i++) {
      fill(255);
      stroke(0);
      rect((width/4.0)*i, 590, (width/4.0), 50);
      fill(0);
      text(i, (width/4.0)*i+(width/8.0), 615);

      if (mouseX > (width/4.0)*i && mouseX < (width/4.0)*i+(width/4.0) && mouseY > 590 && mouseY < height) {
        if (mousePressed == true) {
          mode = i;
        }
      }
    }
  }
}