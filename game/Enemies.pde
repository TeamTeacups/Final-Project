class Enemies {// comment later 
  PVector loc;
  PImage missPotts, duster; 
  float scaleFactor, randy, sz;
  float x, y;

  Enemies( float a, float b) {

    missPotts= loadImage("clippotts6.gif");
    duster=loadImage("duster.gif");
    loc=new PVector (a, b);
    scaleFactor=.25;
    randy=random(0, 1);
  }

  void duster() {
    image(duster, loc.x, loc.y, duster.width*scaleFactor, duster.height*scaleFactor);
  }

  void missPotts() {
    image(missPotts, x, y, missPotts.width*scaleFactor, missPotts.height*scaleFactor);
    x = 200;
    y += 4;
  }

  boolean isInContactWith(Chip doritos) {
    if (dist(doritos.loc.x, doritos.loc.y, loc.x, loc.y) <= sz) {
      return true;
    } else {
      return false;
    }
  }
  boolean makeAChoice() {
    if (randy>.5) {
      return true;
    } else {
      return false;
    }
  }

  void create() {
    if (makeAChoice()) {
      duster();
    } else {
      missPotts();
    }
  }
  void update() {
    loc.y+=4;
  }
}