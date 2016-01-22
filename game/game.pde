boolean play = false;
Chip chip;
ArrayList<Powerups> powerup = new ArrayList<Powerups>();
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
  
  //Powerup stuff
  
  for(int i =0; i<3; i++){
    powerup.add(new Powerups(random(width), random(height)));
  }
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
  if (down&&t.loc.y<height-height/8) { //if plate jumped on isn't on bottom (base point)
    for (int j = 0; j<platform.size(); j++) {//all plates move down
      Plate k = platform.get(j);
      k.update();
    }
   for (int j = 0; j<powerup.size(); j++) {//all plates move down
      Powerups fun = powerup.get(j);
      fun.update();
        }
  }
  
  
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o= platform.get(i); //gets each plate

    if (o.isInContactWithChip(chip.loc)&&chip.isFalling()) { //if chip touches plate while falling
      down = true;   //plates move down
      t = o;

      chip.jump();

      if (o.soupTime()) {    //Chip jumps higher if touching a bowl
      } else {
        println("Chip should jump high");
        chip.isFalling();
        chip.highJump();
      }

      if (chip.lost()) {    //Chips loses
        chip.reset();
      }
    }
  }

  for (int i = platform.size()-1; i>=0; i--) {
    Plate o=platform.get(i);
    if (platform.size()<=5) {    //Limits the amount of plates
      platform.add(new Plate(o));
    }
    o.create();
    if (o.offScreen()) {
      platform.remove(i);
      platform.add(new Plate(o));
    }
  }
  
  //Powerup for statement
  for (int i = powerup.size()-1; i>=0; i--){
    Powerups fun = powerup.get(i);
    if (powerup.size()<=5){
      powerup.add(new Powerups(random(width),random(height)));
    }
    fun.display();
    fun.newLife();
  }
}


void keyPressed() {
  chip.key();
}