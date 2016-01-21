class Plate {
  PVector loc;
  int xsize, ysize;
  float randy;

  //Constructor 1
  Plate() {
    loc= new PVector(width/2, height-height/10);
    xsize = 100;
    ysize = 10;
    randy= random(0, 1);
  }

  //Constructor 2
  Plate(Plate old) {
    loc= new PVector(random(old.loc.x-100, old.loc.x+100), random(old.loc.y-200, old.loc.y-10));
    xsize = 100;
    ysize = 10;
    randy= random(0, 1);
  }

  //Constructor 3
  Plate(Plate old, float a) {
    loc= new PVector(random(old.loc.x-100, old.loc.x+100), random(old.loc.y-200, old.loc.y-10));
    xsize = 100;
    ysize = 10;
    randy= random(0, a);
  }

  //Reular Platforms
  void regPlate() {    
    fill(255);
    ellipse(loc.x, loc.y, xsize, ysize);
  }

  // Makes a new plate (REGULAR, BROKEN, BOWL)
  void create() {
    if (isItBroken()) {
      regPlate();
    } else {
      brokenPlate();
    }
  }

  //Checks to see if plate is still on screen
  boolean offScreen() {
    if (loc.y>=height) {      
      return true;
    } else {
      return false;
    }
  }

  //Checks to see if Chip is touching a plate
  boolean isInContactWithChip(PVector direction) {
    if (direction.y>loc.y-ysize/2 && direction.y<loc.y+ysize/2 && loc.x-xsize/2<direction.x+27 && loc.x+xsize/2>direction.x) {
      return true;
    } else {
      return false;
    }
  }

  //Makes plates move down
  void update() {
    loc.y+=4;
  }

  //Checks to see if plate is at that basepoint
  boolean allAboutThatBase() {
    if (loc.y<=height-height/8) {
      return true;
    } else {
      return false;
    }
  }



  //The broken Plate
  void brokenPlate() {
    fill(255);
    ellipse(loc.x, loc.y, xsize, ysize);
    //line(loc.x,loc.y-ysize/2,loc.x,loc.y+ysize/2);
    line(loc.x, loc.y-ysize/2, loc.x-5, loc.y-2);
    line(loc.x-5, loc.y-2, loc.x, loc.y);
    line(loc.x, loc.y, loc.x+5, loc.y+2);
    line(loc.x+5, loc.y+2, loc.x, loc.y+ysize/2);
  }

  //Checks to see if plate should be broken
  boolean isItBroken() {
    if ( randy < .4) {
      return true;
    } else {
      return false;
    }
  }
}