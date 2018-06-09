import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class LibraryGirlfriend extends PApplet {

public void setup() {
  
  textAlign(CENTER, CENTER);
  value_init();
}

public void draw() {
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
class Home {
  int mode;
  Home(int mode) {
    this.mode = mode;
  }

  public void home() {

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
    case 4:
      // mode4
      break;
    default:
      // main
      break;
    }
    button();
  }

  public void button() {

    for (int i = 0; i < 5; i++) {
      fill(255);
      stroke(0);
      rect((width/5.0f)*i, 590, (width/5.0f), 50);
      fill(0);
      text(i, (width/5.0f)*i+(width/8.0f), 615);

      if (mouseX > (width/5.0f)*i && mouseX < (width/5.0f)*i+(width/5.0f) && mouseY > 590 && mouseY < height) {
        if (mousePressed == true) {
          mode = i;
        }
      }
    }
  }
}
// game mode val
int gamemode;

Title t;
Home h;

public void value_init() {
  gamemode = -1;
  t = new Title();
  h = new Home(0);
}
class Title {

  Title() {
  }

  public void title() {
    if (mousePressed == true) {
      gamemode = 0;
    }
  }
}
  public void settings() {  size(480, 640); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "LibraryGirlfriend" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
