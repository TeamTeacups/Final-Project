class Chip {
  float gravity =.2;
  PVector loc, vel;
  PImage chip, chipjump;
  float chipx, chipy;
  float ysize, xsize;
  float timer;


  Chip(Plate bottom) {
    chip = loadImage("chip.jpg");
    chipjump = loadImage("chipjump.gif");
    loc = new PVector();
    xsize= 60;
    ysize= 80;
    loc.set(bottom.loc.x, bottom.loc.y - ysize/2);
    vel = new PVector();
    vel.set(0, 12);
    timer=0;
  }

  //Allows you to move Chip around
  void key() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=10;
      } else if (keyCode == RIGHT) {
        loc.x+=10;
      }
    }
  }



  //Chip falls
  //adds gravity
  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }


  //wraps Chip around the screen
  void update() {
    if (loc.x+chipx > width) {
      loc.x=0;
    } else if (loc.x< 0) {
      loc.x=width;
    }
  }

  //Shows the image of chip
  void displaychip() {
    image(chip, loc.x, loc.y, xsize, ysize);
  }

  //Shows chip jumping
  void displaychipjump() {
    image(chipjump, loc.x, loc.y, xsize, ysize);
  }

  //Is Chip REALLY falling?
  boolean isFalling() {
    if (vel.y>0) {
      return true;
    }
    return false;
  }

  //Did you lose the game?
  boolean lost() {
    if (loc.y>height) {
      return true;
    }
    return false;
  }
  void reset() {
    loc.set(width/2-15, height-height/5);
  }

  //The regular jump of chip
  void jump() {
    vel.y = -10;
  }
  //The higher jump of chip
  void highJump() {
    vel.y = -12;
  }
  
  //slows gravity of chip
  void defyingGravity(){
    gravity=.08;
  }
  
  //restores gravity
  void allIsRightInTheWorld(){
    gravity=.2;
  }
}