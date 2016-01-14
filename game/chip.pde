class Chip {
  float gravity =.2;
  PVector loc, vel;
  //PImage chip, chipjump;
  float chipx, chipy;
  //  Chip(PImage chip, PImage chipjump) {

  //    this.chip = chip;
  //    this.chipjump = chipjump;
  Chip() {
    loc = new PVector();
    loc.set(width/2-15, height-height/5);
    vel = new PVector();
    vel.set(0, 12);
  }
  void key() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=10;
      } else if (keyCode == RIGHT) {
        loc.x+=10;
      }
    }
  }
    void fall() {
      loc.add(vel);
      vel.y += gravity;
    }
    void update() {

      if (loc.x+chipx > width) {
        loc.x=0;
      } else if (loc.x< 0) {
        loc.x=width;
      }
    }
    void displaychip() {
      //    image(chip,loc.x,loc.y);
      rect(loc.x, loc.y, 30, 40);
    }
    //  void displaychipjump(float x,float y) {
    //   image(chipjump, x,y);
    // }
    boolean isFalling() {
      //  if (){
      //   return true;
      //  }
      return false;
    }

   
    void jump() {
      vel.y = -abs(vel.y);
    }
  }