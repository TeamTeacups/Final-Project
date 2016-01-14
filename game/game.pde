boolean play = false;
//PImage chip, chipjump;
Chip chip;
ArrayList<Plate> p = new ArrayList<Plate>();


void setup() {
  size(500, 800);
  p.add(new Plate(width/2, height-height/8+50));
  p.add(new Plate(random(width), height-height/5));
  p.add(new Plate(random(width), height-height/4));
  p.add(new Plate(random(width), 40));
  p.add(new Plate(random(width), height-height/2));
  p.add(new Plate(random(width), 20));
  p.add(new Plate(random(width), 100));
  p.add(new Plate(random(width), 200));
  
  p.add(new Plate(random(width), height-height/2));
  p.add(new Plate(random(width), 300));
  p.add(new Plate(random(width), 200));
  chip = new Chip();
  //  chip = loadImage();
  //  chipjump = loadImage();
}
void draw() {
  background(255);
  chip.displaychip();
  chip.update();
  chip.fall();
  if(chip.lost()){
    chip.reset();
  }
  for (int i = p.size()-1; i>=0; i--) {
      Plate o=p.get(i);
      if(o.isInContactWithChip(chip.loc)){
        o.update();
        chip.jump();
    }
  }

  for (int i = p.size()-1; i>=0; i--) {
    Plate o=p.get(i);
    o.create();
    if (o.allAboutThatBase()) {
      o.update();
    } 
    if (o.offScreen()) {
      p.remove(i);
      p.add(new Plate (random(width), random(0)));
    }
  }
}
void keyPressed() {
  chip.key();
}