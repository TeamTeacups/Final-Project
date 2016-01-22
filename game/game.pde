boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();
boolean down = false;
Plate t;
void setup() {
  size(500, 800);


  //Original Plate
  for ( int i=0; i<4; i++) {
    platform.add(new Plate(random(0, width), random(200, height)));
  }
  //Chip stuff
  chip = new Chip(platform.get(0));
}
void draw() {
  background(255);
    chip.update();    //Updates Chip
  chip.fall();    //Makes chip fall
  if (chip.isFalling()) {
    chip.displaychip();
  }//shows Chip
  else {
    chip.displaychipjump(); //shows pic of chip jumping
  }
  if (down&&t.loc.y<height-height/8) { //if plate jumped on isn't on bottom 
    for (int j = 0; j<platform.size(); j++) {//all plates move down
      Plate k = platform.get(j);
      k.update();
    }
  }
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o= platform.get(i); //gets each plate

    if (o.isInContactWithChip(chip.loc)&&chip.isFalling()) { //if chip touches plate while falling
      down = true;   //plates move down
      t = o;

      chip.jump();
      //Head

      if (o.soupTime()) {
      } else {
        println("Chip should jump high");
        chip.isFalling();
        chip.highJump();
      }

      if (chip.lost()) {
        chip.reset();
      }
    }
  }

  for (int i = platform.size()-1; i>=0; i--) {
    Plate o=platform.get(i);
    if (platform.size()<=5) {    //Limits the amount 
      platform.add(new Plate(o));
    }
    o.create();
    if (o.offScreen()) {
      platform.remove(i);
      platform.add(new Plate(o));
    }
  }
}


void keyPressed() {
  chip.key();
}