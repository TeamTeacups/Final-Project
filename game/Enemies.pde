class Enemies {
  PVector loc;
  PImage img; 
  float scaleFactor, randy, sz;
  float x, y;

  Enemies() {
    if (random(1) < .5) {
      img = loadImage("clippotts6.gif");
    } else {
      img = loadImage("duster.gif");
    }
    loc=new PVector (random(width), 0);
    scaleFactor=.25;
    randy=random(0, 1);
  }

  void display() {
    image(img, loc.x, loc.y, img.width*scaleFactor, img.height*scaleFactor);
  }

  boolean isInContactWith(Chip chip) {
    if (dist(chip.loc.x, chip.loc.y, loc.x, loc.y) <= 60) {
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

  void update() {
    loc.y+=4;
  }
  
}