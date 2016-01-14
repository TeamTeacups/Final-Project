class Plate {
  PVector loc;
  int xsize,ysize;
  Plate(float p, float g) {
    loc= new PVector(p, g);
    xsize = 100;
    ysize = 10;
  }

  void create() {
    fill(255);
    ellipse(loc.x, loc.y, xsize, ysize);
  }

  boolean offScreen() {
    if (loc.y>=height) {      
      return true;
    } else {
      return false;
    }
  }
   boolean isInContactWithChip(PVector direction) {
      if (direction.y>loc.y+6&&direction.y<loc.y-6&&loc.x-50<direction.x+27&&loc.x+50>direction.x){
       return true;
      }
      return false;
    }
  void update() {
     
  }
  
  boolean allAboutThatBase(){
    if(loc.y<=height-height/8){
      return true;
    }else {
      return false;
    }
  }
}