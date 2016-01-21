boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();
ArrayList<Enemies> enemies = new ArrayList<Enemies>();
Enemies e;


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

  //decide whether to add an enemy
  if (random(1) < .05 && enemies.size() == 0) {
    enemies.add(new Enemies());
  }

  for (int i = 0; i < enemies.size(); i++) {
    //e.create();
    Enemies e = enemies.get(i);
    e.update();
    e.display();
    if (e.loc.y > height) {
      enemies.remove(i);
    }
  }

  chip.update();    //Updates Chip
  chip.fall();    //Makes chip fall

  if (chip.isFalling()) {
    chip.displaychip();
  } else {
    chip.displaychipjump();
  }
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o = platform.get(i);

    if (o.isInContactWithChip(chip.loc)) {
      println("caught chip in frame " + frameCount);
      //o.update();
      chip.jump();
    }
    for (int j = 0; j < enemies.size(); j++) {
      Enemies e = enemies.get(j);  
      if (e.isInContactWith(chip)) {
        chip.hitBottom();
      }
    }

    //for (int i = platform.size()-1; i>=0; ) {
    //  i--;
    //  Plate o = platform.get(i);

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