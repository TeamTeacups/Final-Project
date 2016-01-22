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
    if (soupTime()) {
      regPlate();
    } else {
      bowl();
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
    if (direction.y+60>loc.y-ysize/2 && direction.y<loc.y+ysize/2 && loc.x-xsize/2<direction.x+27 && loc.x+xsize/2>direction.x) {
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



  //The bowl
  void bowl() {
    fill(0,45,0);
    ellipse(loc.x, loc.y, xsize, ysize);
    //rect(loc.x-xsize/2,loc.y+ysize/2,xsize/3,ysize);
  }

  //Checks to see if platform is a bowl.
  boolean soupTime() {
    if ( randy < .4) {
      return true;
    } else {
      return false;
    }
  }
}