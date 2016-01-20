boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();


void setup() {
  size(500, 800);

  //Original Plate
  for ( int i=0; i<1; i++) {
    platform.add(new Plate());
  }

  //Chip stuff
  chip = new Chip(platform.get(0));
  //  chip = loadImage();
  //  chipjump = loadImage();
}
void draw() {
  background(255);
  
  chip.update();    //Updates Chip
  chip.fall();    //Makes chip fall
  if(chip.isFalling()){
    chip.displaychip();
  }//shows Chip
  else{
    chip.displaychipjump();
  }
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o= platform.get(i);

    if (o.isInContactWithChip(chip.loc)) {
      println("caught chip in frame " + frameCount);
      //o.update();
      chip.jump();
      
    }
  }

  for (int i = platform.size()-1; i>=0; i--) {
    Plate o=platform.get(i);
    if (platform.size()<=6) {    //Limits the amount 
      platform.add(new Plate(o));
    }
    o.create();

    /*if (o.allAboutThatBase()) {
     o.update();
     } */

    if (o.offScreen()) {
      platform.remove(i);
      platform.add(new Plate(o));
    }
    if (keyPressed && keyCode==UP) {
      platform.add(new Plate(o));
    }
  }
}

void keyPressed() {
  chip.key();
}