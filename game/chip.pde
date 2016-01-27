class Chip {
  float gravity =.3;
  PVector loc, vel;
  PImage chip, chipjump;
  float chipx, chipy;
  float ysize, xsize;

  //Constructor
  Chip(Plate bottom) {
    chip = loadImage("chip.jpg");
    chipjump = loadImage("chipjump.gif");
    xsize=60;
    ysize=80;
    loc = new PVector();
    loc.set(width/2, 700);
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
    image(chip, loc.x, loc.y, xsize, ysize);
  }
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

  //Make sure Chip's intitial velocity
  void jump() {
      vel.y = -loc.y/40;
  }
  
  //end game
  boolean dead(){
    if(loc.y>800){
      return true;
      
    }
    return false;
  }
}