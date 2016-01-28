class Enemies {//declare the class enemies 
  PVector loc;// all the variable to control size, speed and location
  PImage img; //all PVectors
  float scaleFactor, randy, sz;
  float x, y;

  Enemies() {//initialize Chip
    if (random(1) < .5) {//the choosing of either image is random and depends on a value
      img = loadImage("clippotts6.gif");//is the value is less than .5 then one image will be shown
    } else {
      img = loadImage("duster.gif");// if not, the other image will be shown 
    }
    loc=new PVector (random(100,width-100), 0);
    scaleFactor=.25;
    randy=random(0, 1);
  }

  void display() {// function display 
    image(img, loc.x, loc.y, img.width*scaleFactor, img.height*scaleFactor);// where it will be located
  }

  boolean isInContactWith(Chip chip) {//boolean to have enemies in contact with Chip 
    if (dist(chip.loc.x, chip.loc.y, loc.x, loc.y) <= 60) {// depends on the distance between them 
      return true;
    } else {
      return false;
    }
  }
  
  boolean makeAChoice() {// which image will appear 
    if (randy>.5) {
      return true;
    } else {
      return false;
    }
  }

  void update() {// the velocity of Chip as he falls, where he goes when an enemy attacks him 
    loc.y+=4;
  }
  
}