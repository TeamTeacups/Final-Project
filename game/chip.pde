class Chip {
  float gravity =.2;
  PVector loc, vel;
  PImage chip, chipjump;
  float chipx, chipy;
  float ysize, xsize;


  Chip(Plate bottom) {
    chip = loadImage("chip.jpg");
    chipjump = loadImage("chipjump.gif");
    loc = new PVector();
    xsize= 60;
    ysize= 80;
    loc.set(bottom.loc.x, bottom.loc.y - ysize/2);
    vel = new PVector();
    vel.set(0, 12);
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
    image(chip,loc.x,loc.y,xsize,ysize);
  }
<<<<<<< HEAD
  
  //Shows chip jumping
  void displaychipjump() {
  image(chipjump,loc.x,loc.y,xsize,ysize);
  }
  
  //Is Chip really falling?
=======
  void displaychipjump() {
  image(chipjump,loc.x,loc.y,xsize,ysize);
  }

  //Is Chip REALLY falling?
>>>>>>> refs/remotes/origin/master
  boolean isFalling() {
    if (vel.y>0) {
      return true;
    }
    return false;
  }

  boolean lost() {
    if (loc.y>height) {
      return true;
    }
    return false;
  }
  void reset() {
    loc.set(width/2-15, height-height/5);
  }

  void jump() {
    vel.y = -10;
  }
}